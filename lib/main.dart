import 'package:changenotifier/change_learning.dart';
import 'package:changenotifier/learning.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ChangeLearning(),
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80, left: 20, right: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  'I am learning' +
                      Provider.of<ChangeLearning>(context).subject,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Learning(learning: 'ChangeNotifier'),
            Learning(learning: 'Provider'),
            Learning(learning: 'ChangeNotifier'),
            Learning(learning: 'Provider'),
          ],
        ),
      ),
    );
  }
}
