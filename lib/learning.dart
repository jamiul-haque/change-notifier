import 'package:changenotifier/change_learning.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Learning extends StatelessWidget {
  final String learning;
  const Learning({Key? key, required this.learning}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ChangeLearning>(context, listen: false)
            .ChangeSubjects(learning);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        width: double.maxFinite,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            learning,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
