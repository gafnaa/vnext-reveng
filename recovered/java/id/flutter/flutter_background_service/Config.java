package id.flutter.flutter_background_service;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public class Config {
    final SharedPreferences pref;

    public Config(Context context) {
        this.pref = context.getSharedPreferences("id.flutter.background_service", 0);
    }

    public boolean isAutoStartOnBoot() {
        return this.pref.getBoolean("auto_start_on_boot", false);
    }

    public void setAutoStartOnBoot(boolean z) {
        this.pref.edit().putBoolean("auto_start_on_boot", z).apply();
    }

    public boolean isForeground() {
        return this.pref.getBoolean("is_foreground", false);
    }

    public void setIsForeground(boolean z) {
        this.pref.edit().putBoolean("is_foreground", z).apply();
    }

    public boolean isManuallyStopped() {
        return this.pref.getBoolean("is_manually_stopped", false);
    }

    public void setManuallyStopped(boolean z) {
        this.pref.edit().putBoolean("is_manually_stopped", z).apply();
    }

    public long getBackgroundHandle() {
        return this.pref.getLong("background_handle", 0L);
    }

    public void setBackgroundHandle(long j) {
        this.pref.edit().putLong("background_handle", j).apply();
    }

    public String getInitialNotificationTitle() {
        return this.pref.getString("initial_notification_title", "Background Service");
    }

    public void setInitialNotificationTitle(String str) {
        this.pref.edit().putString("initial_notification_title", str).apply();
    }

    public String getInitialNotificationContent() {
        return this.pref.getString("initial_notification_content", "Preparing");
    }

    public void setInitialNotificationContent(String str) {
        this.pref.edit().putString("initial_notification_content", str).apply();
    }

    public String getNotificationChannelId() {
        return this.pref.getString("notification_channel_id", null);
    }

    public void setNotificationChannelId(String str) {
        this.pref.edit().putString("notification_channel_id", str).apply();
    }

    public int getForegroundNotificationId() {
        return this.pref.getInt("foreground_notification_id", 112233);
    }

    public void setForegroundNotificationId(int i) {
        this.pref.edit().putInt("foreground_notification_id", i).apply();
    }

    public String getForegroundServiceTypes() {
        return this.pref.getString("foreground_service_types", null);
    }

    public void setForegroundServiceTypes(String str) {
        this.pref.edit().putString("foreground_service_types", str).apply();
    }
}
