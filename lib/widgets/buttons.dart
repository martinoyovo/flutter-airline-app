import 'package:flutter/material.dart';
import 'package:airline_app/utils/size_config.dart';
import 'package:airline_app/utils/styles.dart';


Widget elevatedButton({required BuildContext context, required VoidCallback callback, required String text, Color? color, bool? processing}) {
  return SizedBox(
    width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
            primary: color ?? Styles.primaryColor,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 17),
            textStyle: const TextStyle(fontFamily: "DMSans", color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
        onPressed: callback
      ),
  );
}

Widget outlinedButton({required BuildContext context, required VoidCallback callback, required String text, String? color}) {
  return OutlinedButton(
    onPressed: callback,
    child: Text(text, style: const TextStyle(fontSize: 15),),
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      primary: Styles.primaryColor,
      elevation: 0,
      side: BorderSide(color: Styles.primaryColor, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getProportionateScreenWidth(50))),
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(9), horizontal: getProportionateScreenHeight(15)),
    ),
  );
}

Widget textButton({required BuildContext context, required VoidCallback callback, required Widget child, Color? color}) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 5),
    child: TextButton(
        child: child,
        style: TextButton.styleFrom(
          elevation: 0,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        ),
        onPressed: callback
    ),
  );
}