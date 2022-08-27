import 'package:flutter/cupertino.dart';

class ChangeLearning extends ChangeNotifier {
  String subject = "";
  void ChangeSubjects(String newSub) {
    subject = newSub;
    notifyListeners();
  }
}
