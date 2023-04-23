import '../constants/navigation_instances.dart';

toggleDrawer() async {
  if (appBar.scaffoldKey.currentState!.isDrawerOpen) {
    appBar.scaffoldKey.currentState!.openEndDrawer();
  } else {
    appBar.scaffoldKey.currentState!.openDrawer();
  }
}