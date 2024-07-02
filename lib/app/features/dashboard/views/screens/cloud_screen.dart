library cloud;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_task/app/constans/app_constants.dart';
import 'package:daily_task/app/shared_components/card_cloud.dart';
import 'package:daily_task/app/shared_components/card_folder.dart';
import 'package:daily_task/app/shared_components/custom_button.dart';
import 'package:daily_task/app/shared_components/file_list_button.dart';
import 'package:daily_task/app/shared_components/responsive_builder.dart';
import 'package:daily_task/app/shared_components/header_text.dart';
import 'package:daily_task/app/utils/helpers/app_helpers.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../shared_components/search_button.dart';

//components
part '../components/header.dart';
part '../components/storage_chart.dart';
part '../components/category.dart';
part '../components/recent.dart';
part '../components/card_data.dart';
part '../components/card_service.dart';
part '../components/card_data_tablet_desktop.dart';

//controller
part '../../controllers/cloud_controller.dart';

// binding
part '../../bindings/cloud_binding.dart';

//models
part '../../models/user.dart';
part '../../models/usage.dart';
part '../../models/folder_data.dart';

class CloudScreen extends GetView<CloudController> {
  const CloudScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveBuilder(
          mobileBuilder: (context, constraints) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const Padding(
                        padding: EdgeInsets.all(kDefaultSpacing),
                        child: _Header(),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(kDefaultSpacing),
                        child: Text(
                          "Folder",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                _CardData(folderData: controller.folderData)
              ],
            );
          },
          tabletBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 800 ? 8 : 7,
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            const Padding(
                              padding: EdgeInsets.all(kDefaultSpacing),
                              child: _Header(),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(kDefaultSpacing),
                              child: Text(
                                "Folder",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _CardDataOther(folderData: controller.folderData)
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
              ],
            );
          },
          desktopBuilder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: constraints.maxWidth > 1350 ? 3 : 4,
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            const Padding(
                              padding: EdgeInsets.all(kDefaultSpacing),
                              child: _Header(),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(kDefaultSpacing),
                              child: Text(
                                "Folder",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      _CardDataOther(folderData: controller.folderData)
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const VerticalDivider(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
