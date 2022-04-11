//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternationalStudentPage extends StatefulWidget {
  const InternationalStudentPage({Key? key}) : super(key: key);

  @override
  State<InternationalStudentPage> createState() =>
      _InternationalStudentPageState();
}

class _InternationalStudentPageState extends State<InternationalStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
      ),
    ));
  }
}
