import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/utils/widgets/Ticket_tab.dart';
import 'package:untitled/utils/widgets/double_txt_widget.dart';
import 'package:untitled/utils/widgets/icon_txt_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\n you looking for?",style: Styles.headLineStyle.copyWith(fontSize:AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          AppTicketTab(firstTab: "AirLine Tickets",secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),


          Gap(AppLayout.getHeight(25)),

           Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(15), horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
            color: Color(0xD91130CE),
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
            ),
            child: Center(
              child:

                Text("find Tickets", style: Styles.textStyle.copyWith(color: Colors.white,)),

            ),

            ),
          Gap(AppLayout.getHeight(25)),
          const DoubleTxtData(BigData: "Upcoming Events", SmallData: "View all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(450),
                width: size.width*.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15) ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1 ,
                    )
                  ]
                ),
                child:
                Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(20) ),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                              image:AssetImage(
                                  "assets/images/sit.jpg"

                              )
                            

                        )

                      ),

                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("30% discount on early booking of this flight.Don't miss this." , style: Styles.headLineStyle2.copyWith(fontSize: 20)),
                  ],

                ),

              ),
              Column(
                children: [
                 Stack(
                   children: [
                     Container(
                       width: size.width*0.44,
                       height: AppLayout.getHeight(220),
                       decoration: BoxDecoration(
                           color: Color(0xFF3AB8b8),
                           borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                       ),
                       padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal: AppLayout.getWidth(15)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Discount \nfor Survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                           Gap(AppLayout.getHeight(10)),
                           Text("Takes the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,fontSize: 18, color: Colors.white),)
                         ],
                       ),
                     ),
                    Positioned(right: -45,
                      top: -40,
                      child:  Container(
                      padding: EdgeInsets.all(AppLayout.getWidth(30)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent

                      ),
                    ),)
                   ],
                 ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width*.44,
                    height: AppLayout.getHeight(218),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                    ),
                      child: Column(
                        children: [
                          Text("Take love ", style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold ),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 36)
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 36)
                              ),
                              TextSpan(
                                text: '👍',
                                style: TextStyle(fontSize: 30)
                              ),
                            ]
                          ))
                        ],
                      ),

                  )

                ],
              )
            ],
          ),
          




        ],

      )
      ,
    );
  }
}
