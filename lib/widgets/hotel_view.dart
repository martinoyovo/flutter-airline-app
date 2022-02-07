import 'package:airline_app/utils/layouts.dart';
import 'package:airline_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget{
  final Map<String, dynamic> hotel;

  const HotelView({Key? key, required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 1
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('assets/images/${hotel['image']}'),
                fit: BoxFit.cover
              )
            ),
          ),
          const Gap(10),
          Text(hotel['place'], style: Styles.headline2Style.copyWith(fontWeight: FontWeight.w600),),
          const Gap(5),
          Text(hotel['destination'], style: Styles.subtitle1Style),
          const Gap(8),
          Text('\$${hotel['price']}/night', style: Styles.headline1Style.copyWith(),),
        ],
      ),
    );
  }
}
