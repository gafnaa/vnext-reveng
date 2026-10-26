package id.flutter.flutter_background_service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.app.ServiceCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tekartik.sqflite.Utils$$ExternalSyntheticApiModelOutline0;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class BackgroundService extends Service implements MethodChannel.MethodCallHandler {
    private static final String TAG = "BackgroundService";
    private FlutterEngine backgroundEngine;
    private Config config;
    private String configForegroundTypes;
    private DartExecutor.DartEntrypoint dartEntrypoint;
    private String[] foregroundTypes;
    private Handler mainHandler;
    private MethodChannel methodChannel;
    private String notificationChannelId;
    private String notificationContent;
    private int notificationId;
    private String notificationTitle;
    private static final String LOCK_NAME = BackgroundService.class.getName() + ".Lock";
    public static volatile PowerManager.WakeLock lockStatic = null;
    AtomicBoolean isRunning = new AtomicBoolean(false);
    private boolean isManuallyStopped = false;
    private final Pipe.PipeListener listener = new Pipe.PipeListener() { // from class: id.flutter.flutter_background_service.BackgroundService.1
        @Override // id.flutter.flutter_background_service.Pipe.PipeListener
        public void onReceived(JSONObject jSONObject) {
            BackgroundService.this.receiveData(jSONObject);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    public static synchronized PowerManager.WakeLock getLock(Context context) {
        if (lockStatic == null) {
            lockStatic = ((PowerManager) context.getSystemService("power")).newWakeLock(1, LOCK_NAME);
            lockStatic.setReferenceCounted(true);
        }
        return lockStatic;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        FlutterBackgroundServicePlugin.servicePipe.addListener(this.listener);
        this.config = new Config(this);
        this.mainHandler = new Handler(Looper.getMainLooper());
        String notificationChannelId = this.config.getNotificationChannelId();
        if (notificationChannelId == null) {
            this.notificationChannelId = "FOREGROUND_DEFAULT";
            createNotificationChannel();
        } else {
            this.notificationChannelId = notificationChannelId;
        }
        this.notificationTitle = this.config.getInitialNotificationTitle();
        this.notificationContent = this.config.getInitialNotificationContent();
        this.notificationId = this.config.getForegroundNotificationId();
        this.configForegroundTypes = this.config.getForegroundServiceTypes();
        updateNotificationInfo();
        onStartCommand(null, -1, -1);
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (!this.isManuallyStopped) {
            WatchdogReceiver.enqueue(this);
        } else {
            this.config.setManuallyStopped(true);
        }
        stopForeground(true);
        this.isRunning.set(false);
        FlutterEngine flutterEngine = this.backgroundEngine;
        if (flutterEngine != null) {
            flutterEngine.getServiceControlSurface().detachFromService();
            this.backgroundEngine.destroy();
            this.backgroundEngine = null;
        }
        FlutterBackgroundServicePlugin.servicePipe.removeListener(this.listener);
        this.methodChannel = null;
        this.dartEntrypoint = null;
        super.onDestroy();
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            Utils$$ExternalSyntheticApiModelOutline0.m1982m();
            NotificationChannel notificationChannelM = Utils$$ExternalSyntheticApiModelOutline0.m(this.notificationChannelId, "Background Service", 2);
            notificationChannelM.setDescription("Executing process in background");
            ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannelM);
        }
    }

    protected void updateNotificationInfo() {
        if (this.config.isForeground()) {
            NotificationCompat.Builder contentIntent = new NotificationCompat.Builder(this, this.notificationChannelId).setSmallIcon(R.drawable.ic_bg_service_small).setAutoCancel(true).setOngoing(true).setContentTitle(this.notificationTitle).setContentText(this.notificationContent).setContentIntent(PendingIntent.getActivity(this, 11, getPackageManager().getLaunchIntentForPackage(getApplicationContext().getPackageName()), Build.VERSION.SDK_INT >= 31 ? 301989888 : 268435456));
            try {
                this.foregroundTypes = null;
                String str = this.configForegroundTypes;
                if (str != null && !str.isEmpty()) {
                    this.foregroundTypes = this.configForegroundTypes.split(",");
                }
                ServiceCompat.startForeground(this, this.notificationId, contentIntent.build(), ForegroundTypeMapper.getForegroundServiceType(this.foregroundTypes).intValue());
            } catch (SecurityException e) {
                Log.w(TAG, "Failed to start foreground service due to SecurityException - have you forgotten to request a permission? - " + e.getMessage());
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        this.config.setManuallyStopped(false);
        WatchdogReceiver.enqueue(this);
        runService();
        return 2;
    }

    private void runService() {
        FlutterEngine flutterEngine;
        try {
            if (!this.isRunning.get() && ((flutterEngine = this.backgroundEngine) == null || flutterEngine.getDartExecutor().isExecutingDart())) {
                Log.v(TAG, "Starting flutter engine for background service");
                getLock(getApplicationContext()).acquire();
                updateNotificationInfo();
                FlutterLoader flutterLoader = FlutterInjector.instance().flutterLoader();
                if (!flutterLoader.initialized()) {
                    flutterLoader.startInitialization(getApplicationContext());
                }
                flutterLoader.ensureInitializationComplete(getApplicationContext(), null);
                this.isRunning.set(true);
                FlutterEngine flutterEngine2 = new FlutterEngine(this);
                this.backgroundEngine = flutterEngine2;
                flutterEngine2.getPlugins().remove(FlutterBackgroundServicePlugin.class);
                this.backgroundEngine.getServiceControlSurface().attachToService(this, null, this.config.isForeground());
                MethodChannel methodChannel = new MethodChannel(this.backgroundEngine.getDartExecutor().getBinaryMessenger(), "id.flutter/background_service_android_bg", JSONMethodCodec.INSTANCE);
                this.methodChannel = methodChannel;
                methodChannel.setMethodCallHandler(this);
                this.dartEntrypoint = new DartExecutor.DartEntrypoint(flutterLoader.findAppBundlePath(), "package:flutter_background_service_android/flutter_background_service_android.dart", "entrypoint");
                ArrayList arrayList = new ArrayList();
                arrayList.add(String.valueOf(this.config.getBackgroundHandle()));
                this.backgroundEngine.getDartExecutor().executeDartEntrypoint(this.dartEntrypoint, arrayList);
                return;
            }
            Log.v(TAG, "Service already running, using existing service");
        } catch (UnsatisfiedLinkError e) {
            this.notificationContent = "Error " + e.getMessage();
            updateNotificationInfo();
            Log.w(TAG, "UnsatisfiedLinkError: After a reboot this may happen for a short period and it is ok to ignore then!" + e.getMessage());
        }
    }

    public void receiveData(final JSONObject jSONObject) {
        if (this.methodChannel == null) {
            return;
        }
        try {
            this.mainHandler.post(new Runnable() { // from class: id.flutter.flutter_background_service.BackgroundService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m2009x73ac4e1c(jSONObject);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: lambda$receiveData$0$id-flutter-flutter_background_service-BackgroundService, reason: not valid java name */
    /* synthetic */ void m2009x73ac4e1c(JSONObject jSONObject) {
        MethodChannel methodChannel = this.methodChannel;
        if (methodChannel == null) {
            return;
        }
        methodChannel.invokeMethod("onReceiveData", jSONObject);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        if (this.isRunning.get()) {
            WatchdogReceiver.enqueue(getApplicationContext(), 1000);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        try {
            if (str.equalsIgnoreCase("setNotificationInfo")) {
                JSONObject jSONObject = (JSONObject) methodCall.arguments;
                if (jSONObject.has("title")) {
                    this.notificationTitle = jSONObject.getString("title");
                    this.notificationContent = jSONObject.getString(FirebaseAnalytics.Param.CONTENT);
                    updateNotificationInfo();
                    result.success(true);
                    return;
                }
                return;
            }
            if (str.equalsIgnoreCase("setAutoStartOnBootMode")) {
                this.config.setAutoStartOnBoot(((JSONObject) methodCall.arguments).getBoolean("value"));
                result.success(true);
                return;
            }
            if (str.equalsIgnoreCase("setForegroundMode")) {
                boolean z = ((JSONObject) methodCall.arguments).getBoolean("value");
                this.config.setIsForeground(z);
                if (z) {
                    updateNotificationInfo();
                    this.backgroundEngine.getServiceControlSurface().onMoveToForeground();
                } else {
                    stopForeground(true);
                    this.backgroundEngine.getServiceControlSurface().onMoveToBackground();
                }
                result.success(true);
                return;
            }
            if (str.equalsIgnoreCase("isForegroundMode")) {
                result.success(Boolean.valueOf(this.config.isForeground()));
                return;
            }
            if (str.equalsIgnoreCase("stopService")) {
                this.isManuallyStopped = true;
                WatchdogReceiver.remove(this);
                stopSelf();
                result.success(true);
                return;
            }
            if (str.equalsIgnoreCase("sendData")) {
                try {
                    if (FlutterBackgroundServicePlugin.mainPipe.hasListener()) {
                        FlutterBackgroundServicePlugin.mainPipe.invoke((JSONObject) methodCall.arguments);
                    }
                    result.success(true);
                    return;
                } catch (Exception e) {
                    result.error("send-data-failure", e.getMessage(), e);
                    return;
                }
            }
            if (str.equalsIgnoreCase("openApp")) {
                try {
                    Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(268435456);
                        launchIntentForPackage.addFlags(32768);
                        startActivity(launchIntentForPackage);
                        result.success(true);
                        return;
                    }
                    return;
                } catch (Exception e2) {
                    result.error("open app failure", e2.getMessage(), e2);
                    return;
                }
            }
            result.notImplemented();
            Log.e(TAG, e.getMessage());
            e.printStackTrace();
            result.notImplemented();
        } catch (JSONException e3) {
            Log.e(TAG, e3.getMessage());
            e3.printStackTrace();
        }
    }
}
