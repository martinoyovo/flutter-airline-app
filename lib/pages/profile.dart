import 'package:airline_app/utils/styles.dart';
import 'package:airline_app/widgets/custom_divider.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(60),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  color: Color(0xFFF37B67),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/dash.png', fit: BoxFit.cover,),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Flutter Dash', style: Styles.headline1Style,),
                  Gap(2),
                  Text('New-York', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFFEF4F3)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF37B67)
                          ),
                          padding: EdgeInsets.all(3),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                        ),
                        Gap(6),
                        Text('Premium status', style: TextStyle(color: Color(0xFFF37B67), fontWeight: FontWeight.w600),),
                        Gap(6)
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(6),
                  InkWell(
                    child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),),
                  ),
                ],
              )
            ],
          ),
          Gap(8),
          Divider(color: Colors.grey.shade300,),
          Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(
                          0xFF264CD2)),
                      color: Colors.transparent
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.orangeColor, size: 27,),
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                    ),
                    Gap(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('You\'ve got a new award', style: Styles.headline2Style.copyWith(fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                        Gap(2),
                        Text('You have 150 flights in a year', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white.withOpacity(0.9)), textAlign: TextAlign.center,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text('Accumulated miles', style: Styles.headline2Style,),
          Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ],
            ),
            child: Column(
              children: [
                Gap(15),
                Text('192802', style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Miles accrued', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                    Text('23 May 2021', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(4),
                Divider(color: Colors.grey.shade300,),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('23 042', style: Styles.headline3Style),
                        Gap(5),
                        Text('Miles', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Airline CO', style: Styles.headline3Style),
                        Gap(5),
                        Text('Received from', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                Gap(12),
                customDivider(),
                Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('24', style: Styles.headline3Style),
                        Gap(5),
                        Text('Miles', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('McDonal\'s', style: Styles.headline3Style),
                        Gap(5),
                        Text('Received from', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                Gap(12),
                customDivider(),
                Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('52 340', style: Styles.headline3Style),
                        Gap(5),
                        Text('Miles', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Exuma', style: Styles.headline3Style),
                        Gap(5),
                        Text('Received from', style: Styles.subtitle1Style.copyWith(fontSize: 16)),
                      ],
                    ),
                  ],
                ),
                Gap(25),
                InkWell(
                  child: Text('How to get more miles', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),),
                ),
                Gap(20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
