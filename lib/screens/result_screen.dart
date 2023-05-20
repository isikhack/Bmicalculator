import 'package:bmiapp/screens/customwidget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customwidget/resulttext.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Padding(
          padding: EdgeInsets.all(
            16.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'YOUR RESULT',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(
                height: 26.h,
              ),
              Container(
                width: 328.w,
                height: 481.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(14.sp),
                ),
                child: Padding(
                  padding: EdgeInsets.all(28.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ResultText(
                        title: resultText,
                        fontsize: 36,
                        fontweight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ResultText(
                        title: bmiResult,
                        fontsize: 96,
                        fontweight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      const ResultText(
                        title: 'EXPLANATION',
                        fontsize: 16,
                        fontweight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      ResultText(
                        title: interpretation,
                        fontsize: 16,
                        fontweight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 78.h),
              CustomButton(
                title: 'BACK',
                onpressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
