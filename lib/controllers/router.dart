import 'package:flutter/material.dart';
import 'package:paneltheme/pages/Admin/admin_branch.dart';
import 'package:paneltheme/pages/Admin/admin_dashboard.dart';
import 'package:paneltheme/pages/Admin/admin_department.dart';
import 'package:paneltheme/pages/Admin/admin_designation.dart';
import 'package:paneltheme/pages/Admin/manage_employee_details.dart';
import 'package:paneltheme/pages/Admin/partners.dart';

import '../constants/routes.dart';
import '../pages/Admin/admin_employee.dart';
import '../pages/Admin/leave_request.dart';
import '../pages/SuperAdmin/super_admin_companies.dart';
import '../pages/SuperAdmin/super_admin_dashboard.dart';
import '../widgets/scale_route.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    //Super admin router

    case superAdminDashboardRoute:
      return _getPageRoute(const SuperAdminDashboard());
    case superAdminCompaniesRoute:
      return _getPageRoute(const SuperAdminCompanies());

    /// ADMIN SIDE MENU ///
    case adminDashboardRoute:
      return _getPageRoute(const AdminDashboard());

    case adminBranchRoute:
      return _getPageRoute(const AdminBranch());

    case adminDepartmentRoute:
      return _getPageRoute(const AdminDepartment());

    case adminDesignationRoute:
      return _getPageRoute(const AdminDesignation());

    case adminEmployeeRoute:
      return _getPageRoute(const AdminEmployee());

    case adminLeaveRoute:
      return _getPageRoute(const LeaveRequestPage());

    case adminPartnerRoute:
      return _getPageRoute(const PartnersPage());

    case manageEmployeeDetailsRoute:
      return _getPageRoute(ManageEmployeeDeails());

    default:
      return _getPageRoute(const SuperAdminDashboard());
  }
}

PageRoute _getPageRoute(Widget child) {
  return ScaleRoute(page: child);
}
