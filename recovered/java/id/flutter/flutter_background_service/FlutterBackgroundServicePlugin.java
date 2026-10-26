package id.flutter.flutter_background_service;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.Log;
import androidx.core.content.ContextCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class FlutterBackgroundServicePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, EventChannel.StreamHandler {
    private static final String TAG = "BackgroundServicePlugin";
    private MethodChannel channel;
    private Config config;
    private Context context;
    private EventChannel eventChannel;
    private final Map<Object, EventChannel.EventSink> eventSinks = new HashMap();
    private final Pipe.PipeListener listener = new Pipe.PipeListener() { // from class: id.flutter.flutter_background_service.FlutterBackgroundServicePlugin.1
        @Override // id.flutter.flutter_background_service.Pipe.PipeListener
        public void onReceived(JSONObject jSONObject) {
            FlutterBackgroundServicePlugin.this.receiveData(jSONObject);
        }
    };
    private Handler mainHandler;
    public static final Pipe servicePipe = new Pipe();
    public static final Pipe mainPipe = new Pipe();

    public static void registerWith(FlutterEngine flutterEngine) {
        Log.d(TAG, "registering with FlutterEngine");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.context = flutterPluginBinding.getApplicationContext();
        this.config = new Config(this.context);
        this.mainHandler = new Handler(this.context.getMainLooper());
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "id.flutter/background_service/android/method", JSONMethodCodec.INSTANCE);
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        EventChannel eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "id.flutter/background_service/android/event", JSONMethodCodec.INSTANCE);
        this.eventChannel = eventChannel;
        eventChannel.setStreamHandler(this);
        mainPipe.addListener(this.listener);
    }

    private void start() {
        WatchdogReceiver.enqueue(this.context);
        boolean zIsForeground = this.config.isForeground();
        Intent intent = new Intent(this.context, (Class<?>) BackgroundService.class);
        if (zIsForeground) {
            ContextCompat.startForegroundService(this.context, intent);
        } else {
            this.context.startService(intent);
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        JSONObject jSONObject = (JSONObject) methodCall.arguments;
        try {
            if ("configure".equals(str)) {
                long j = jSONObject.getLong("background_handle");
                boolean z = jSONObject.getBoolean("is_foreground_mode");
                boolean z2 = jSONObject.getBoolean("auto_start_on_boot");
                boolean z3 = jSONObject.getBoolean("auto_start");
                String string = null;
                String string2 = jSONObject.isNull("initial_notification_title") ? null : jSONObject.getString("initial_notification_title");
                String string3 = jSONObject.isNull("initial_notification_content") ? null : jSONObject.getString("initial_notification_content");
                String string4 = jSONObject.isNull("notification_channel_id") ? null : jSONObject.getString("notification_channel_id");
                int iIntValue = (jSONObject.isNull("foreground_notification_id") ? null : Integer.valueOf(jSONObject.getInt("foreground_notification_id"))).intValue();
                JSONArray jSONArray = jSONObject.isNull("foreground_service_types") ? null : jSONObject.getJSONArray("foreground_service_types");
                if (jSONArray != null) {
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < jSONArray.length(); i++) {
                        sb.append(jSONArray.getString(i));
                        if (i < jSONArray.length() - 1) {
                            sb.append(",");
                        }
                    }
                    string = sb.toString();
                }
                this.config.setBackgroundHandle(j);
                this.config.setIsForeground(z);
                this.config.setAutoStartOnBoot(z2);
                this.config.setInitialNotificationTitle(string2);
                this.config.setInitialNotificationContent(string3);
                this.config.setNotificationChannelId(string4);
                this.config.setForegroundNotificationId(iIntValue);
                this.config.setForegroundServiceTypes(string);
                if (z3) {
                    start();
                }
                result.success(true);
                return;
            }
            if (TtmlNode.START.equals(str)) {
                start();
                result.success(true);
                return;
            }
            if (str.equalsIgnoreCase("sendData")) {
                Pipe pipe = servicePipe;
                synchronized (pipe) {
                    if (pipe.hasListener()) {
                        pipe.invoke((JSONObject) methodCall.arguments);
                        result.success(true);
                        return;
                    } else {
                        result.success(false);
                        return;
                    }
                }
            }
            if (str.equalsIgnoreCase("isServiceRunning")) {
                result.success(Boolean.valueOf(isServiceRunning()));
            } else {
                result.notImplemented();
            }
        } catch (Exception e) {
            result.error("100", "Failed while read arguments", e.getMessage());
        }
    }

    private boolean isServiceRunning() {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) this.context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if (BackgroundService.class.getName().equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        mainPipe.removeListener(this.listener);
        this.channel.setMethodCallHandler(null);
        this.channel = null;
        synchronized (this.eventSinks) {
            this.eventSinks.clear();
        }
        this.eventChannel.setStreamHandler(null);
        this.eventChannel = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void receiveData(final JSONObject jSONObject) {
        synchronized (this) {
            for (final EventChannel.EventSink eventSink : this.eventSinks.values()) {
                this.mainHandler.post(new Runnable() { // from class: id.flutter.flutter_background_service.FlutterBackgroundServicePlugin.2
                    @Override // java.lang.Runnable
                    public void run() {
                        eventSink.success(jSONObject);
                    }
                });
            }
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink eventSink) {
        synchronized (this) {
            this.eventSinks.put(obj, eventSink);
        }
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        synchronized (this) {
            this.eventSinks.remove(obj);
        }
    }
}
