import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/on_boarding/views/functions/on_boarding_dun.dart';
import 'package:dalel/features/on_boarding/views/widgets/custom_nav.dart';
import 'package:dalel/features/on_boarding/views/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  bool isLastPage = false;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isLastPage = _controller.page?.round() == 2;
        currentIndex = _controller.page?.round() ?? 0;
      });
    });
  }

  void nextPage() {
    _controller.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void goToLogin() {
    onBoardingViewed();
    router.pushReplacement("/signIn");
  }

  void goToSignUp() {
    onBoardingViewed();
    router.pushReplacement("/signUp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 40),
              CustomNavBar(),
              SizedBox(height: 40),
              OnBoardingWidgetBody(controller: _controller),
              SizedBox(height: 90),
              CustomBtn(
                text: isLastPage ? AppStrings.createAccount : AppStrings.next,
                onPressed: isLastPage ? goToSignUp : nextPage,
              ),
              const SizedBox(height: 16),
              if (isLastPage)
                TextButton(
                  onPressed: goToLogin,
                  child: const Text(AppStrings.signIn),
                ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
