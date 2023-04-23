import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/navigation_instances.dart';

class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VertticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      onHover: (value) {
        value
            ? superAdminMenuController.onHover(itemName)
            : superAdminMenuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: superAdminMenuController.isHovering(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Visibility(
                visible: superAdminMenuController.isHovering(itemName) ||
                    superAdminMenuController.isActive(itemName),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: Colors.white,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: superAdminMenuController.isActive(itemName)
                      ? const Color(0xff1A58A8)
                      : null,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.only(
                    left: 10.0, top: 8, bottom: 8, right: 18),
                // margin: const EdgeInsets.only(left: 20, bottom: 30),
                child: superAdminMenuController.returnIconFor(itemName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
