part of dashboard;

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
    required this.onSelected,
    required this.currentIndex,
  }) : super(key: key);

  final Function(int index) onSelected;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        onSelected(value);
      },
      items: const [
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.home),
          icon: Icon(EvaIcons.homeOutline),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.cloudUploadOutline),
          icon: Icon(EvaIcons.cloudUploadOutline),
          label: "Cloud",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.checkmarkCircle2),
          icon: Icon(EvaIcons.checkmarkCircle),
          label: "Task",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(EvaIcons.settings),
          icon: Icon(EvaIcons.settingsOutline),
          label: "Settings",
        ),
      ],
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).primaryColor.withOpacity(.5),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
    );
  }
}
