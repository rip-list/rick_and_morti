import 'package:flutter/material.dart';
import 'package:rick/common/constants/app_colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final Color color;
  final double height;
  final Color textColor;

  const MainButton({
    Key? key,
    this.onPressed,
    required this.title,
    required this.color,
    required this.height,
    this.textColor = AppColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: AppColors.blue,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
