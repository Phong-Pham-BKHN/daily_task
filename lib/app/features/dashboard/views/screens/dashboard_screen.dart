library dashboard;

// import 'package:daily_task/app/constans/app_constants.dart';
import 'package:daily_task/app/features/dashboard/views/screens/cloud_screen.dart';
// import 'package:daily_task/app/shared_components/card_task.dart';
// import 'package:daily_task/app/shared_components/header_text.dart';
// import 'package:daily_task/app/shared_components/list_task_assigned.dart';
// import 'package:daily_task/app/shared_components/list_task_date.dart';
import 'package:daily_task/app/shared_components/responsive_builder.dart';
// import 'package:daily_task/app/shared_components/search_field.dart';
// import 'package:daily_task/app/shared_components/selection_button.dart';
// import 'package:daily_task/app/shared_components/simple_selection_button.dart';
// import 'package:daily_task/app/shared_components/simple_user_profile.dart';
// import 'package:daily_task/app/shared_components/task_progress.dart';
// import 'package:daily_task/app/shared_components/user_profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:daily_task/app/utils/helpers/app_helpers.dart';
// import 'package:intl/intl.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
// import '../../../../config/routes/app_pages.dart';
import 'home_screen.dart';

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// model

// component
part '../components/bottom_navbar.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: (ResponsiveBuilder.isDesktop(context) || kIsWeb)
          ? null
          : Obx(
              () => BottomNavbar(
                currentIndex: controller.currentIndex.value,
                onSelected: (index) {
                  controller.changePage(index);
                },
              ),
            ),
      body: PageView(
        controller: controller.page,
        onPageChanged: (index) => controller.onChangedPage(index),
        children: const [
          HomeScreen(),
          CloudScreen(),
        ],
      ),
    );
  }
}
