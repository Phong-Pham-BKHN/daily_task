part of home;

class _MainMenu extends StatelessWidget {
  const _MainMenu({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(int index, SelectionButtonData value) onSelected;

  @override
  Widget build(BuildContext context) {
    return SelectionButton(
      data: [
        SelectionButtonData(
          activeIcon: EvaIcons.home,
          icon: EvaIcons.homeOutline,
          label: "Home",
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.cloudUploadOutline,
          icon: EvaIcons.cloudUploadOutline,
          label: "Cloud",
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.checkmarkCircle2,
          icon: EvaIcons.checkmarkCircle,
          label: "Task",
          totalNotif: 20,
        ),
        SelectionButtonData(
          activeIcon: EvaIcons.settings,
          icon: EvaIcons.settingsOutline,
          label: "Settings",
        ),
      ],
      onSelected: (index, value) {
        switch (index) {
          case 0:
            Get.toNamed('/dashboard');
            break;
          case 1:
            Get.toNamed('/cloud');
            break;
          // Thêm các case khác nếu cần
        }
        onSelected(index, value);
      },
    );
  }
}
