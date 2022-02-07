import 'package:airline_app/utils/layouts.dart';
import 'package:airline_app/utils/styles.dart';
import 'package:airline_app/widgets/ticket_view.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const Gap(60),
              Text('Tickets', style: Styles.headline1Style.copyWith(fontSize: 35),),
              const Gap(20),
              FittedBox(
                child: Container(
                  padding: const EdgeInsets.all(3.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width*0.44,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                            color: Colors.white
                        ),
                        child: Center(child: Text('Upcoming', style: Styles.subtitle1Style.copyWith(fontWeight: FontWeight.w600, color: Styles.textColor),)),
                      ),
                      const Gap(5),
                      Container(
                        width: size.width*0.44,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                            color: Colors.transparent
                        ),
                        child: Center(child: Text('Previous', style: Styles.subtitle1Style.copyWith(fontWeight: FontWeight.w600, color: Colors.grey.shade600),)),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 1,
                                spreadRadius: 1
                            )
                          ],
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(22),topRight: Radius.circular(22))
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text('NYC', style: Styles.headline3Style),
                              const Gap(65),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF8ACCF7), width: 2.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Stack(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 24,
                                        child: LayoutBuilder(builder: (context,constraints){
                                          return Flex(
                                            children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                                                SizedBox(height: 1,width: 3,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                            ),
                                            direction: Axis.horizontal,
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          );
                                        },),
                                      ),
                                      Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.local_airport_rounded, color: Color(0xFF8ACCF7), size: 24,),))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xFF8ACCF7), width: 2.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              const Gap(65),
                              Text('LDN', style: Styles.headline3Style),
                            ],
                          ),
                          const Gap(1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(width:100,child: Text('New-York', style: Styles.subtitle1Style)),
                              Text('8H 30M', style: Styles.headline3Style.copyWith(fontWeight: FontWeight.bold)),
                              SizedBox(width:100,child: Text('London',textAlign: TextAlign.end, style: Styles.subtitle1Style)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 24,
                            width: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(right: Radius.circular(50)),
                                color: Colors.grey.shade50,

                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: LayoutBuilder(builder: (context,constraints){
                                return Flex(
                                  children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                                      SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                  ),
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                );
                              },),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 10,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(left: Radius.circular(50)),
                                color: Colors.grey.shade50,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              offset: const Offset(0, 1),
                              blurRadius: 1,
                              spreadRadius: 0,
                            )
                          ],
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(22),bottomRight: Radius.circular(22))
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1 May', style: Styles.headline3Style),
                                    const Gap(5),
                                    Text('Date', style: Styles.subtitle1Style),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('08:00 AM', style: Styles.headline3Style),
                                    const Gap(5),
                                    Text('Departure time', style: Styles.subtitle1Style),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('23', style: Styles.headline3Style),
                                    const Gap(5),
                                    Text('Number', style: Styles.subtitle1Style),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                              child: Divider(color: Colors.grey.shade300,)
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Flutter Dash', style: Styles.headline3Style),
                                        const Gap(5),
                                        Text('Passenger', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('5221 478566', style: Styles.headline3Style),
                                        const Gap(5),
                                        Text('Passport', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: LayoutBuilder(builder: (context,constraints){
                                    return Flex(
                                      children: List.generate((constraints.constrainWidth()/12).floor(), (index) =>
                                          SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                      ),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    );
                                  },),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('0055 444 77147', style: Styles.headline3Style),
                                        const Gap(5),
                                        Text('Number of E-ticket', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('B2SG28', style: Styles.headline3Style),
                                        const Gap(5),
                                        Text('Booking code', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: LayoutBuilder(builder: (context,constraints){
                                    return Flex(
                                      children: List.generate((constraints.constrainWidth()/12).floor(), (index) =>
                                          SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey.shade300),),)
                                      ),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    );
                                  },),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/images/visa.png', scale: 11,),
                                            Text(' *** 2462', style: Styles.headline3Style),
                                          ],
                                        ),
                                        const Gap(5),
                                        Text('Payment method', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('\$249.99', style: Styles.headline3Style),
                                        const Gap(5),
                                        Text('Price', style: Styles.subtitle1Style),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Divider(color: Colors.grey.shade300,)
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: BarcodeWidget(
                                drawText: false,
                                color: Styles.textColor,
                                barcode: Barcode.code128(), // Barcode type and settings
                                data: 'https//github.com/martinoyovo', // Content
                                width: double.infinity,
                                height: 70,
                              ),
                            ),
                          ),
                          const Gap(10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 0),
                child: const TicketView(isOrange: true,)
              )
            ],
          ),
          Positioned(
            top: 295,
            left: 19,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Styles.textColor, width: 2),
               shape: BoxShape.circle
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )
            ),
          ),
          Positioned(
            top: 295,
            right: 19,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(color: Styles.textColor, width: 2),
               shape: BoxShape.circle
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              )
            ),
          ),
        ],
      ),
    );
  }
}
