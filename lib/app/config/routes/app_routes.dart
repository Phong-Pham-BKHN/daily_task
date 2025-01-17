part of 'app_pages.dart';

/// used to switch pages
class Routes {
  static const home = _Paths.home;
  static const cloud = _Paths.cloud;
  static const dashboard = _Paths.dashboard;
}

/// contains a list of route names.
// made separately to make it easier to manage route naming
class _Paths {
  static const home = '/home';
  static const cloud = '/cloud';
  static const dashboard = '/dashboard';

  // Example :
  // static const index = '/';
  // static const splash = '/splash';
  // static const product = '/product';
}
