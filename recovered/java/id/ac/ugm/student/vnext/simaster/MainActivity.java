package id.ac.ugm.student.vnext.simaster;

import android.content.Intent;
import androidx.media3.container.NalUnitUtil;
import io.flutter.embedding.android.FlutterActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\b"}, d2 = {"Lid/ac/ugm/student/vnext/simaster/MainActivity;", "Lio/flutter/embedding/android/FlutterActivity;", "<init>", "()V", "onNewIntent", "", "intent", "Landroid/content/Intent;", "app_productionRelease"}, k = 1, mv = {2, 2, 0}, xi = NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED)
public final class MainActivity extends FlutterActivity {
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
    }
}
