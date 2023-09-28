import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          width: 100,
      
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                createButton("Vibrar 500ms", simpleVibrate),
                createButton("Vibrar 1s", oneSecondVibrate),
                createButton("Vibrar mais", moreVibrate)
            ],
          ),
        ),
      ),
    );
  }

  void simpleVibrate() => Vibration.vibrate();
  void oneSecondVibrate() => Vibration.vibrate(duration: 1000);
  void moreVibrate() =>  Vibration.vibrate(
    pattern: [
      500, 1000, 500, 2000, 500, 3000, 500, 4000
    ],
    intensities: [
      1, 64, 128, 255 
    ],
  );

  Widget createButton(String text, VoidCallback action){
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}

