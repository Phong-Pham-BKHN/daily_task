import '../../features/dashboard/views/screens/dashboard_screen.dart';
import 'package:get/get.dart';

import '../../features/dashboard/views/screens/home_screen.dart';
import '../../features/dashboard/views/screens/cloud_screen.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened, this page will be the first to be shown
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardScreen(),
      bindings: [
        DashboardBinding(),
        HomeBinding(),
        CloudBinding(),
      ],
    ),
    GetPage(
      name: _Paths.cloud,
      page: () => CloudScreen(),
      binding: CloudBinding(),
    ),
  ];
}
