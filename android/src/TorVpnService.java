// android/src/TorVpnService.java
package com.example.tornetworkplugin;

import android.net.VpnService;
import android.os.ParcelFileDescriptor;
import android.util.Log;

import org.torproject.android.service.TorService;

import java.io.IOException;

public class TorVpnService extends VpnService {

    private static final String TAG = "TorVpnService";
    private ParcelFileDescriptor vpnInterface;

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "TOR VPN Service started.");
        
        // Start the TOR service (ensure TorService is running and the VPN is set up)
        startTorService();
        return START_STICKY;
    }

    @Override
    public void onRevoke() {
        super.onRevoke();
        stopTorService();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        stopTorService();
    }

    private void startTorService() {
        try {
            // Create the VPN interface to route traffic through TOR
            Builder builder = new Builder();
            builder.setSession("TOR VPN")
                   .addAddress("10.0.0.2", 24)  // Example local IP address for the VPN
                   .addRoute("0.0.0.0", 0);  // Routes all traffic through the VPN

            vpnInterface = builder.establish();
            // Start the TOR process
            TorService.startTor(getApplicationContext());
        } catch (IOException e) {
            Log.e(TAG, "Failed to establish VPN interface", e);
        }
    }

    private void stopTorService() {
        try {
            if (vpnInterface != null) {
                vpnInterface.close();
                vpnInterface = null;
            }
            TorService.stopTor(getApplicationContext());
        } catch (IOException e) {
            Log.e(TAG, "Error stopping TOR service", e);
        }
    }
}
