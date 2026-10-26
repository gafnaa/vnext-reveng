package id.flutter.flutter_background_service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.MY_PACKAGE_REPLACED") || intent.getAction().equals("android.intent.action.BOOT_COMPLETED") || intent.getAction().equals("android.intent.action.QUICKBOOT_POWERON")) {
            Config config = new Config(context);
            if (config.isAutoStartOnBoot()) {
                if (BackgroundService.lockStatic == null) {
                    BackgroundService.getLock(context).acquire();
                }
                if (config.isForeground()) {
                    ContextCompat.startForegroundService(context, new Intent(context, (Class<?>) BackgroundService.class));
                } else {
                    context.startService(new Intent(context, (Class<?>) BackgroundService.class));
                }
            }
        }
    }
}
