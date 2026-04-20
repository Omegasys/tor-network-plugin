// android/src/MainActivity.java
package com.example.tornetworkplugin;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {

    private Button startVpnButton;
    private Button stopVpnButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        startVpnButton = findViewById(R.id.startVpnButton);
        stopVpnButton = findViewById(R.id.stopVpnButton);

        startVpnButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startTorVpnService();
            }
        });

        stopVpnButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                stopTorVpnService();
            }
        });
    }

    private void startTorVpnService() {
        Intent intent = new Intent(this, TorVpnService.class);
        startService(intent);
        Toast.makeText(this, "Starting TOR VPN...", Toast.LENGTH_SHORT).show();
    }

    private void stopTorVpnService() {
        Intent intent = new Intent(this, TorVpnService.class);
        stopService(intent);
        Toast.makeText(this, "Stopping TOR VPN...", Toast.LENGTH_SHORT).show();
    }
}
