import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingViewed() {
  getIt<CacheHelper>().saveData(key: 'isOnBoardingViewed', value: true);
}
