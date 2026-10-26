package id.flutter.flutter_background_service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class Pipe {
    private final List<PipeListener> listeners = new ArrayList();

    public interface PipeListener {
        void onReceived(JSONObject jSONObject);
    }

    public boolean hasListener() {
        return !this.listeners.isEmpty();
    }

    public void addListener(PipeListener pipeListener) {
        synchronized (this) {
            this.listeners.add(pipeListener);
        }
    }

    public void removeListener(PipeListener pipeListener) {
        synchronized (this) {
            this.listeners.remove(pipeListener);
        }
    }

    public void invoke(JSONObject jSONObject) {
        synchronized (this) {
            if (!this.listeners.isEmpty()) {
                Iterator<PipeListener> it = this.listeners.iterator();
                while (it.hasNext()) {
                    it.next().onReceived(jSONObject);
                }
            }
        }
    }
}
