import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form/form.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        builder: (context) {
          return const MaterialApp(
            home: ApplyNowCourseDetails(courseName: "BCA"),
          );
        });
  }
}
