package id.flutter.flutter_background_service;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.AlarmManagerCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.media3.common.C;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class WatchdogReceiver extends BroadcastReceiver {
    private static final String ACTION_RESPAWN = "id.flutter.background_service.RESPAWN";
    private static final int QUEUE_REQUEST_ID = 111;

    public static void enqueue(Context context) {
        enqueue(context, 5000);
    }

    public static void enqueue(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) WatchdogReceiver.class);
        intent.setAction(ACTION_RESPAWN);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, QUEUE_REQUEST_ID, intent, Build.VERSION.SDK_INT >= 31 ? 167772160 : C.BUFFER_FLAG_FIRST_SAMPLE);
        boolean zCanScheduleExactAlarms = Build.VERSION.SDK_INT >= 31 ? alarmManager.canScheduleExactAlarms() : true;
        if (Build.VERSION.SDK_INT >= 33 || !zCanScheduleExactAlarms) {
            AlarmManagerCompat.setAndAllowWhileIdle(alarmManager, 0, System.currentTimeMillis() + ((long) i), broadcast);
        } else {
            AlarmManagerCompat.setExact(alarmManager, 0, System.currentTimeMillis() + ((long) i), broadcast);
        }
    }

    public static void remove(Context context) {
        Intent intent = new Intent(context, (Class<?>) WatchdogReceiver.class);
        intent.setAction(ACTION_RESPAWN);
        ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(PendingIntent.getBroadcast(context, QUEUE_REQUEST_ID, intent, Build.VERSION.SDK_INT >= 31 ? 301989888 : 268435456));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(ACTION_RESPAWN)) {
            Config config = new Config(context);
            Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (BackgroundService.class.getName().equals(it.next().service.getClassName())) {
                    z = true;
                }
            }
            if (config.isManuallyStopped() || z) {
                return;
            }
            try {
                if (config.isForeground()) {
                    ContextCompat.startForegroundService(context, new Intent(context, (Class<?>) BackgroundService.class));
                } else {
                    context.getApplicationContext().startService(new Intent(context, (Class<?>) BackgroundService.class));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
