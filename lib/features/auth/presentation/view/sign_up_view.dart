import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/core/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_conditions_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 108,
                ),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    AppStrings.welcome,
                    style: CustomTextStyle.poppins600style28,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  hintText: AppStrings.fristName,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  hintText: AppStrings.lastName,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  hintText: AppStrings.emailAddress,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  hintText: AppStrings.password,
                  isObscure: true,
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    CustomCheckbox(
                      value: false,
                      onChanged: (value) {
                        // إضافة منطق التحديث هنا
                      },
                    ),
                    const SizedBox(width: 4),
                    const TermsAndConditionsText(),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 88,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomBtn(
                  text: AppStrings.signUp,
                  onPressed: () {},
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.alreadyHaveAnAccount),
                    Text(
                      AppStrings.signIn,
                      style: CustomTextStyle.poppins400style12,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
