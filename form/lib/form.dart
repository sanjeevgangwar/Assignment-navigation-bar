import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class ApplyNowCourseDetails extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final courseName;
  const ApplyNowCourseDetails({Key? key, required this.courseName})
      : super(key: key);

  @override
  State<ApplyNowCourseDetails> createState() => _ApplyNowCourseDetailsState();
}

class _ApplyNowCourseDetailsState extends State<ApplyNowCourseDetails> {
  final animationDuration = const Duration(
    milliseconds: 500,
  );
  int _currentStep = 0;
  final StepperType _stepperType = StepperType.vertical;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Inner Container
          Container(
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFFE7050),
          ),
          // Apply Now Button
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                // Get.to(
                //   () => ApplyNowCourseDetails(
                //     courseName: widget.courseName,
                //   ),
                //   transition: Transition.rightToLeftWithFade,
                //   duration: const Duration(milliseconds: 400),
                // );
              },
              child: Container(
                  width: 1.sw,
                  color: Colors.transparent,
                  height: 0.2.sw,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Apply Now",
                          style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.3),
                          size: 11.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.5),
                          size: 12.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.7),
                          size: 13.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white.withOpacity(0.9),
                          size: 14.0,
                        ),
                        const RotatedBox(
                            child:
                                Icon(Icons.local_airport, color: Colors.white),
                            quarterTurns: 1),
                      ],
                    ),
                  )),
            ),
          ),
          // Inner White Container
          Container(
            height: MediaQuery.of(context).size.height * 0.91,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0)),
                color: Colors.white),
          ),
          // Content Body
          Positioned(
            top: 0.25.sw,
            bottom: 0.1.sh,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Main Heading Course Name Start
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      bottom: 30,
                      top: 15,
                    ),
                    child: SizedBox(
                      width: 0.87.sw,
                      child: SizedBox(
                        width: 0.87.sw,
                        child: Text(
                          "Personal Information",
                          style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 22.0.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                  // Main Heading Course Name End

                  Container(
                    color: Colors.red,
                    width: 1.sw,
                    height: 1.sh,
                    child: Stepper(
                      steps: _stepper(),
                      type: _stepperType,
                      physics: const ClampingScrollPhysics(),
                      currentStep: _currentStep,
                      onStepTapped: (step) {
                        setState(() {
                          _currentStep = step;
                        });
                      },
                      onStepContinue: () {
                        setState(() {
                          if (_currentStep < _stepper().length - 1) {
                            _currentStep += 1;
                          } else {
                            // pass data to firebase
                          }
                        });
                      },
                      onStepCancel: () {
                        if (_currentStep > 0) {
                          _currentStep -= 1;
                        } else {
                          _currentStep = 0;
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          // Top Navigation Bar
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 15.0,
              right: 25.0,
            ),
            child: SizedBox(
              height: 0.09.sh,
              width: 0.9.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.orange,
                            size: 20.0.sp,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        height: 40.0,
                        width: 0.7.sw,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          color: Colors.orange,
                        ),
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Center(
                          child: Text(
                            "Admission Application",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5.sp,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
          title: const Text(
            "Personal Information",
          ),
          content: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "First Name",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Last Name",
                ),
              ),
            ],
          ),
          isActive: _currentStep >= 0,
          state: StepState.complete),
      Step(
        title: const Text(
          "Educational Details",
        ),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Recovery Email",
              ),
            ),
          ],
        ),
        isActive: _currentStep >= 1,
        state: StepState.disabled,
      ),
      Step(
        title: const Text(
          "Mobile",
        ),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Mobile Number",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Alternate Mobile Number",
              ),
            ),
          ],
        ),
        isActive: _currentStep >= 2,
        state: StepState.editing,
      ),
      Step(
        title: const Text(
          "Address",
        ),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Address 1",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Address 2",
              ),
            ),
          ],
        ),
        isActive: _currentStep >= 3,
        state: StepState.error,
      ),
      Step(
        title: const Text(
          "Password",
        ),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Confirm Password",
              ),
            ),
          ],
        ),
        isActive: _currentStep >= 4,
        state: StepState.indexed,
      ),
    ];

    return _steps;
  }
}
