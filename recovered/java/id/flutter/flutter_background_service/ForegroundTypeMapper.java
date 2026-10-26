package id.flutter.flutter_background_service;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ForegroundTypeMapper {
    private static final Map<String, Integer> foregroundTypeMap;

    static {
        HashMap map = new HashMap();
        foregroundTypeMap = map;
        map.put("camera", 64);
        map.put("connectedDevice", 16);
        map.put("dataSync", 1);
        map.put("health", 256);
        map.put(FirebaseAnalytics.Param.LOCATION, 8);
        map.put("mediaPlayback", 2);
        map.put("mediaProjection", 32);
        map.put("microphone", 128);
        map.put("phoneCall", 4);
        map.put("remoteMessaging", 512);
        map.put("shortService", 2048);
        map.put("specialUse", 1073741824);
        map.put("systemExempted", 1024);
    }

    public static Integer getForegroundServiceType(String[] strArr) {
        if (strArr == null || strArr.length <= 0) {
            return -1;
        }
        Integer numValueOf = 0;
        for (String str : strArr) {
            numValueOf = Integer.valueOf(numValueOf.intValue() | foregroundTypeMap.get(str).intValue());
        }
        return numValueOf;
    }
}
