import 'package:flutter/material.dart';

void main() {
  runApp(QuestDailyApp());
}

class QuestDailyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quest Daily',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: QuestHomePage(),
    );
  }
}

class QuestHomePage extends StatefulWidget {
  @override
  _QuestHomePageState createState() => _QuestHomePageState();
}

class _QuestHomePageState extends State<QuestHomePage> {
  int exp = 0;

  void addExp(int points) {
    setState(() {
      exp += points;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quest Daily")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("EXP: $exp"),
            ElevatedButton(
              onPressed: () => addExp(10),
              child: Text("Complete Quest (+10 EXP)"),
            ),
          ],
        ),
      ),
    );
  }
}
