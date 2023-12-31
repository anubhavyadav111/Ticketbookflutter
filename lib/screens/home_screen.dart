import 'dart:math';

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/screens/hotel_screens.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/utils/app_styles.dart';
import 'package:untitled/utils/widgets/double_txt_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text
                       ("Good Morning" , style: Styles.headLineStyle3,
                     ),
                     const Gap(5),
                     Text
                       ("Book Tickets" , style: Styles.headLineStyle,
                     ),
                   ],
                 ),

                    Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                      image: AssetImage(
                          "assets/images/img_1.png"
                      )
                      )
                    ),

                  )
                  ],
                ),

                const Gap(25),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                    Text("Search" , style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              Gap(40),
                /*Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming Fight",  style: Styles.headLineStyle2,),
                  InkWell(
                      onTap: (){
                        print("You are tapped ");
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),

                ],
              )*/
                const DoubleTxtData(BigData: "Upcoming Flight ", SmallData: "View All")
              ],

            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left:20),
            child: Row(
              children:
                ticketList.map((singleTicket) => TicketView(ticket: singleTicket , isColor: null,)).toList(),


            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("Hotels",  style: Styles.headLineStyle2,),
            //     InkWell(
            //         onTap: (){
            //           print("You are tapped ");
            //         },
            //         child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
            //
            //   ],
            // ),
            const DoubleTxtData(BigData: "Hotels", SmallData: "View All"),
          ),

          const Gap(15),
          /*const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                HomeScreen(),
                HomeScreen(),
                HomeScreen(),
                HomeScreen(),
              ],
            ),),*/

         SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left:20),
           child:
    Row(
    children:hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()

           )

        )
                ],
           ),

      );

  }
}
