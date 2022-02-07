import 'package:airline_app/utils/layouts.dart';
import 'package:airline_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget{
  final bool? isOrange;

  const TicketView({Key? key, this.isOrange}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = Layouts.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isOrange == null ? Colors.white : const Color(0xFFF37B67),
                  boxShadow: isOrange == true ? [] : [
                    BoxShadow(
                      color: Colors.grey.shade100,
                      blurRadius: 2,
                      spreadRadius: 2
                    )
                  ],
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('NYC', style: isOrange == null ? Styles.headline3Style : Styles.headline3Style.copyWith(color: Colors.white)),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(color: isOrange == null ? const Color(0xFF8ACCF7) : Colors.white, width: 2.5),
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
                                        SizedBox(height: 1,width: 3,child: DecoratedBox(decoration: BoxDecoration(color: isOrange == true ? Colors.white : Colors.grey.shade300),),)
                                    ),
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  );
                                },),
                              ),
                              Center(child: Transform.rotate(angle: 1.5,child: Icon(Icons.local_airport_rounded, color: isOrange == null ? const Color(0xFF8ACCF7) : Colors.white, size: 24,),))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          border: Border.all(color: isOrange == null ? isOrange == null ? const Color(0xFF8ACCF7) : Colors.white : Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const Spacer(),
                      Text('LDN', style: isOrange == null ? Styles.headline3Style : Styles.headline3Style.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(width:100,child: Text('New-York', style: isOrange == null ? Styles.subtitle1Style : Styles.subtitle1Style.copyWith(color: Colors.white),)),
                      Text('8H 30M', style: isOrange == null ? Styles.headline3Style.copyWith(fontWeight: FontWeight.bold) : Styles.subtitle1Style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(width:100,child: Text('London',textAlign: TextAlign.end, style: isOrange == null ? Styles.subtitle1Style : Styles.subtitle1Style.copyWith(color: Colors.white),)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isOrange == null ? Colors.white : const Color(0xFFF37B67),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          color: isOrange == true ? Colors.white : Colors.grey.shade200,

                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(builder: (context,constraints){
                        return Flex(
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                              SizedBox(height: 1,width: 5,child: DecoratedBox(decoration: BoxDecoration(color: isOrange == true ? Colors.white : Colors.grey.shade300),),)
                          ),
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        );
                      },),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        color: isOrange == true ? Colors.white : Colors.grey.shade200,

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 16),
              decoration: BoxDecoration(
                  color: isOrange == null ? Colors.white : const Color(0xFFF37B67),
                  boxShadow: isOrange == true ? [] : [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(0, 2),
                      blurRadius: 2,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 May', style: isOrange == null ? Styles.headline3Style : Styles.headline3Style.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Date', style: isOrange == null ? Styles.subtitle1Style : Styles.subtitle1Style.copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('08:00 AM', style: isOrange == null ? Styles.headline3Style : Styles.headline3Style.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Departure time', style: isOrange == null ? Styles.subtitle1Style : Styles.subtitle1Style.copyWith(color: Colors.white)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23', style: isOrange == null ? Styles.headline3Style : Styles.headline3Style.copyWith(color: Colors.white)),
                          const Gap(5),
                          Text('Number', style: isOrange == null ? Styles.subtitle1Style : Styles.subtitle1Style.copyWith(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
