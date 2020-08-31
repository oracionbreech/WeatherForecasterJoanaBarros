package com.example.weather_forecaster_joana_barros

import android.os.Build
import androidx.annotation.NonNull
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.sql.Date
import java.sql.Time
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.flutter.epic/epic"

    @RequiresApi(Build.VERSION_CODES.O)
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if (call.method == "GetDate"){
                val unli = NewThread()
                unli.startIncrement(flutterEngine,CHANNEL)

                val form = DateTimeFormatter.ofPattern("HH:mm a")
                val date = LocalDateTime.now().format(form)

                print("Invoked Set Date");
                result.success(date)
            }
        }


    }
}

 class NewThread : Thread() {
     private var number: Int = 0;

    override fun run() {
        super.run()
    }

     @RequiresApi(Build.VERSION_CODES.O)
     fun startIncrement(engine: FlutterEngine, CHANNEL: String){
        while (true){
            val form = DateTimeFormatter.ofPattern("HH:mm a")
            val date = LocalDateTime.now().format(form)
            number++;
            MethodChannel(engine.dartExecutor.binaryMessenger, CHANNEL).invokeMethod("setDate", date)
            print(number)
            sleep(1000)
        }
     }

     public fun getNumber(): Int {
         return number
     }
}
