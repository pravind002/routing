import '../controllers/navigation_controller.dart';
import '../pages/Admin/SideBar/admin_menu_controller.dart';
import '../pages/SuperAdmin/SideBar/super_admin_menu_controller.dart';
import '../widgets/top_app_bar.dart';

NavigationController navigationController = NavigationController.instance;

SuperAdminMenuController superAdminMenuController =
    SuperAdminMenuController.instance;

AdminMenuController adminMenuController = AdminMenuController.instance;

TopAppBar appBar = TopAppBar.instance;
