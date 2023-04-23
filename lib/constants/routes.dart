//Super admin routes
import '../widgets/routes_side_menu.dart';

/// SUPER ADMIN SIDE MENU ///
const superAdminCompaniesRoute = 'SuperAdminCompanies';
const superAdminDashboardRoute = 'SuperAdminDashboard';

/// ADMIN SIDE MENU ///
const adminDashboardRoute = 'adminDashboard';
const adminBranchRoute = 'adminBranch';
const adminDepartmentRoute = 'adminDepartment';
const adminDesignationRoute = 'adminDesignation';
const adminEmployeeRoute = 'adminEmployee';
const adminLeaveRoute = 'adminLeave';
const adminPartnerRoute = 'adminPartner';
const manageEmployeeDetailsRoute = 'HrmsMangeEmployeeDetails';

/// SUPER ADMIN SIDE MENU ///
List<MenuItem> superAdminSideMenuItems = [
  MenuItem('Dashboard', superAdminDashboardRoute),
  MenuItem('Companies', superAdminCompaniesRoute)
];

/// ADMIN SIDE MENU ///
List<MenuItem> adminSideMenuItems = [
  MenuItem('Dashboard', adminDashboardRoute),
  MenuItem('My Branch', adminBranchRoute),
  MenuItem('My Department', adminDepartmentRoute),
  MenuItem('Designation', adminDesignationRoute),
  MenuItem('Employees', adminEmployeeRoute),
  MenuItem('Leave Request', adminLeaveRoute),
  MenuItem('Partners', adminPartnerRoute),
];
