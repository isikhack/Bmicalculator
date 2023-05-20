import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onpressed,
  });

  final String title;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor, onPrimary: Colors.white),
        child: Text(
          title,
          style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
