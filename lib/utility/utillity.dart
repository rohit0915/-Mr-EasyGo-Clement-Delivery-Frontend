import 'package:flutter/material.dart';

import '../components/custom_popup_menu_item.dart';

class Utility {
  void showFilterMenu(
      BuildContext context, GlobalKey menuKey, Function callback) {
    final RenderBox renderBox =
        menuKey.currentContext!.findRenderObject() as RenderBox;
    final Offset position = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    showMenu<String>(
      shadowColor: Colors.black,
      elevation: 10,
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + size.height,
        position.dx + size.width,
        position.dy + size.height,
      ),
      items: [
        const PopupMenuItem<String>(
          value: "All",
          child: CustomPopupMenuItem(
            text: "All",
            isActive: true,
          ),
        ),
        const PopupMenuItem<String>(
          value: "Pending",
          child: CustomPopupMenuItem(
            text: "Pending",
            isActive: false,
          ),
        ),
        const PopupMenuItem<String>(
          value: "Running",
          child: CustomPopupMenuItem(
            text: "Running",
            isActive: false,
          ),
        ),
        const PopupMenuItem<String>(
          value: "Completed",
          child: CustomPopupMenuItem(
            text: "Completed",
            isActive: false,
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        callback();
      }
    });
  }

  showSortMenu(BuildContext context, GlobalKey menuKey, Function callback) {
    final RenderBox renderBox =
        menuKey.currentContext!.findRenderObject() as RenderBox;
    final Offset position = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    showMenu<String>(
      shadowColor: Colors.black,
      elevation: 10,
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx,
        position.dy + size.height,
        position.dx + size.width,
        position.dy + size.height,
      ),
      items: [
        const PopupMenuItem<String>(
          value: "RECENT",
          child: CustomPopupMenuItem(
            text: "RECENT",
            isActive: true,
          ),
        ),
        const PopupMenuItem<String>(
          value: "OLD",
          child: CustomPopupMenuItem(
            text: "OLD",
            isActive: false,
          ),
        ),
        const PopupMenuItem<String>(
          value: "NEAR",
          child: CustomPopupMenuItem(
            text: "NEAR",
            isActive: false,
          ),
        ),
        const PopupMenuItem<String>(
          value: "DISTANT",
          child: CustomPopupMenuItem(
            text: "DISTANT",
            isActive: false,
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        callback();
      }
    });
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    //await FlutterPhoneDirectCaller.callNumber(phoneNumber);
  }
}
