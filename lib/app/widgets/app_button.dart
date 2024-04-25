import 'package:flutter/material.dart';
import 'package:flutter_widget/app/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  VoidCallback? onPressed;
  String title;
  bool disabled;
  AppButton({
    Key? key,
    this.onPressed,
    required this.title,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * .95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary,
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
