import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/text_styles.dart';

class StatusMessage extends StatelessWidget {
  final String message;
  final bool isError;

  const StatusMessage({super.key, required this.message, this.isError = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: isError
            ? TextStyles.h2.copyWith(color: AppColors.secondaryBlack)
            : TextStyles.h2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
