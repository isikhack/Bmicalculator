import 'package:bmiapp/bmi_caculator.dart';
import 'package:bmiapp/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customwidget/bmi_button.dart';
import 'customwidget/bmicard.dart';
import 'customwidget/customButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 15;
  int weight = 75;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          centerTitle: true,
          title: const Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.sp,
            vertical: 30.0.sp,
          ),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Check your Body Mass Index(BMI) to know if you are in shape.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 100.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BmiCard(
                    width: 156,
                    height: 215,
                    title: 'AGE',
                    value: age.toString(),
                    label: 'YRS',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BmiButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        BmiButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  BmiCard(
                    width: 156,
                    height: 215,
                    title: 'WEIGHT',
                    value: weight.toString(),
                    label: 'KG',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BmiButton(
                          icon: Icons.remove,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        BmiButton(
                          icon: Icons.add,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.0.h,
              ),
              BmiCard(
                width: double.infinity,
                height: 215,
                label: 'CM',
                title: 'HEIGHT',
                value: height.toString(),
                child: Slider(
                  min: 100.0,
                  max: 220.0,
                  value: height.toDouble(),
                  activeColor: Colors.white,
                  inactiveColor: Colors.white.withOpacity(0.45),
                  onChanged: (newValue) {
                    setState(() {
                      height = newValue.toInt();
                    });
                  },
                ),
              ),
              SizedBox(height: 10.h),
              // Text(
              // 'Tap the button below to check your BMI result',
              // style: TextStyle(
              // fontSize: 16.0.sp,
              // fontWeight: FontWeight.w600,
              // ),
              // textAlign: TextAlign.center,
              // ),
              const Spacer(),
              CustomButton(
                title: 'CALCULATE',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        BMICalculator bmiCalculator = BMICalculator(
                          height: height,
                          weight: weight,
                        );
                        return ResultScreen(
                          bmiResult: bmiCalculator.calculatorBMI(),
                          resultText: bmiCalculator.getResult(),
                          interpretation: bmiCalculator.getinterpretation(),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
