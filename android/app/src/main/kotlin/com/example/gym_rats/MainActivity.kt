package com.example.gym_rats

import android.content.Intent
import android.net.Uri
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "com.example.gym_rats/channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "openWhatsApp" -> {
                    val link = call.argument<String>("link")
                    openWhatsApp(link)
                    result.success(null)
                }
                "openGmail" -> {
                    openGmail()
                    result.success(null)
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun openWhatsApp(link: String?) {
        val intent = Intent(Intent.ACTION_VIEW)
        intent.data = Uri.parse(link)
        startActivity(intent)
    }

    private fun openGmail() {
        val intent = Intent(Intent.ACTION_VIEW)
        intent.data = Uri.parse("mailto:mahfujur@gmail.com?subject=Help%20and%20Support&body=Hello%20Admin")
        startActivity(intent)
    }
}
