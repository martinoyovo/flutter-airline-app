import 'package:flutter/material.dart';

Widget customDivider() {
  return LayoutBuilder(builder: (context,constraints){
    return Flex(
      children: List.generate((constraints.constrainWidth()/12).floor(), (index) =>
          SizedBox(height: 1, width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
      ),
      direction: Axis.horizontal,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    );
  },);
}