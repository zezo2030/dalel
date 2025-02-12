import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/routes/app_router.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToNextView();
  }

  void navigateToNextView() {
    Future.delayed(const Duration(seconds: 2), () {
      // التحقق مما إذا كان المستخدم قد شاهد الأون بوردنج من قبل
      bool isOnBoardingViewed =
          getIt<CacheHelper>().getData(key: 'isOnBoardingViewed') ?? false;

      if (isOnBoardingViewed) {
        // إذا شاهد الأون بوردنج من قبل، انتقل إلى صفحة تسجيل الدخول
        router.pushReplacement('/signUp');
      } else {
        // إذا لم يشاهد الأون بوردنج، انتقل إلى صفحة الأون بوردنج
        router.pushReplacement('/onBoarding');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyle.pacifico400style64,
        ),
      ),
    );
  }
}
