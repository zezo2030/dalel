import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:dalel/core/utils/app_text_style.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: CustomTextStyle.poppins400style12,
        children: [
          const TextSpan(
            text: 'I have agree to our ',
          ),
          TextSpan(
            text: 'Terms and Condition',
            style: CustomTextStyle.poppins400style12.copyWith(
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // إضافة منطق التنقل إلى صفحة الشروط والأحكام
              },
          ),
        ],
      ),
    );
  }
}
