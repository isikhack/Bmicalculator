import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultText extends StatelessWidget {
  const ResultText({
    super.key,
    required this.title,
    required this.fontsize,
    required this.color,
    required this.fontweight,
  });

  final String title;
  final double fontsize;
  final Color color;
  final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontsize.sp,
        fontWeight: fontweight,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
