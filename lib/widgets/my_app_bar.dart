import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:airline_app/utils/styles.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

AppBar myAppBar({required String title, String? color, required bool implyLeading, bool? isLight, Callback? callback}) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: TextStyle(color: Styles.primaryColor, fontSize: 18, fontWeight: FontWeight.bold),),
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: implyLeading == true ? Transform.scale(
        scale: 0.7,
        child: IconButton(
          icon: Icon(CupertinoIcons.arrow_left, size: 33, color: Styles.primaryColor),
          onPressed: () => Get.back(),
        )
    ) : const SizedBox(),
  );
}