import 'package:flutter/material.dart';
import 'package:paneltheme/controllers/router.dart';
import '../constants/navigation_instances.dart';

Navigator localNavigator(String route) => Navigator(
      key: navigationController.navKey,
      initialRoute: route,
      onGenerateRoute: generateRoute,
    );
