import 'package:eden_movies_app/src/config/theme/text_styles.dart';
import 'package:flutter/material.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key});

  final String errorMessage;

  @override
  Widget build(BuildContext context) => Text(
        errorMessage,
        style: AppTextStyles.errorMessageTextStyle,
      );
}
