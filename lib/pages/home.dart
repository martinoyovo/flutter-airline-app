import 'package:airline_app/json/hotel_list.dart';
import 'package:airline_app/utils/styles.dart';
import 'package:airline_app/widgets/hotel_view.dart';
import 'package:airline_app/widgets/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey.shade500),),
                        Gap(4),
                        Text('Flutter Dash', style: Styles.headline1Style,)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFF37B67),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/images/dash.png'),
                    )
                  ],
                ),
                Gap(25),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC2D5)),
                      Gap(5),
                      Text('Search', style: TextStyle(color: Colors.grey.shade500, fontSize: 15, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                Gap(40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming Flights', style: Styles.headline2Style,),
                    InkWell(
                      child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                    )
                  ],
                ),
                Gap(15),
              ],
            )
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketView(isOrange: true,),
                TicketView(isOrange: true,),
              ],
            )
          ),
          Gap(15),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hotels', style: Styles.headline2Style,),
                  InkWell(
                    child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),),
                  )
                ],
              )
          ),
          Gap(15),
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map<Widget>((hotel) => HotelView(hotel: hotel)).toList()
              )
          ),
        ],
      ),
    );
  }
}
