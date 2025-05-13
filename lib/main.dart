import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[300],
      body: Stack(
        children: [
          // Speech bubbles
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 15,
                runSpacing: 10,
                children: List.generate(5, (index) => SpeechBubble()),
              ),
            ),
          ),

          // Centered icons
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SquareBox(),
                    SquareBox(),
                    SquareBox(),
                    CircleBox(),
                  ],
                ),
              ],
            ),
          ),

          // Bottom illustration
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: IllustrationWidget(),
          ),
        ],
      ),
    );
  }
}

class SpeechBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        shape: BoxShape.circle,
      ),
    );
  }
}

class SquareBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      color: Colors.white,
    );
  }
}

class CircleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

class IllustrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.computer, size: 50, color: Colors.brown),
            SizedBox(height: 10),
            Text("Learning Platform", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
