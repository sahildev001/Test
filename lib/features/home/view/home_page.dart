import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahil_test/utils/color_constants.dart';
import 'package:sahil_test/utils/fonts_constants.dart';
import 'package:sahil_test/utils/image_constants.dart';

import '../bloc/home_cubit.dart';
import '../widgets/availabe_types_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.lightBlueColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: BuildAppBar(),
              ),
              SizedBox(height: 10,),
              _BuildSearchCard(),
              SizedBox(height: 10,),
              _BuildTypesAvailable(),
              SizedBox(height: 10,),
              _BuildPromotedBusiness(),
              SizedBox(height: 10,),
             // _BuildTilePopularBusinessORNewBusiness()
            ],
          ),
        ),
      ),
    );
  }
}

///------------------- Build App Bar

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      ///   build profile image
      Container(
        height: 59,
        width: 62,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(ImageConstants.profile))),
      ),

      ///---- Build City and location pin
          Row(
            children: [
              Image.asset(ImageConstants.locationPin,height: 26,),
              Text("Jamaica City"),
              Image.asset(ImageConstants.downArrow,height: 26,)
            ],
          ),
    ///  Build Notification Icon
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(ImageConstants.notification,height: 35,width: 35,),
              Container(
                height: 17,width: 17,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConstants.redColor
                ),
                child: Text("1",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),),
              )
            ],
          )    

    ]);
  }
}



///-------- Build Hello and serch feild

class _BuildSearchCard extends StatelessWidget {
  const _BuildSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 18,right: 18,top: 8),
      padding: EdgeInsets.only(left: 13,right: 13,top: 13,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello Duzmann 👋",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: FontsConstants.Poppins_Black,
            color: ColorConstants.greyShade1,
            fontSize: 18

          ),),
          SizedBox(height: 6,),
          Text("What you are looking for today !",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: FontsConstants.Poppins_Black,
                fontSize: 30,


              )),
          SizedBox(height: 19,),
          /// Build search text feild
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 20,right: 20),
            decoration: BoxDecoration(
              border: Border.all(color: ColorConstants.lightGreyColor)
            ),
            child: Row(
              children: [
                Image.asset(ImageConstants.search,height: 20,),
                SizedBox(width: 14,),
                Expanded(
                  child: TextField(
                    maxLines: 1,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: FontsConstants.Poppins_Black,

                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: FontsConstants.Poppins_Black,
                        color: ColorConstants.greyColor

                    )
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


///------ Build available types
class _BuildTypesAvailable extends StatelessWidget {
  const _BuildTypesAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 18,right: 18,top: 8),
      padding: EdgeInsets.only(left: 13,right: 13,top: 13,bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      //--- Build Ac Repair
          AvailableTypesWidget(
            title: "AC Repair",
            image: ImageConstants.acRepair,
              bgColor: ColorConstants.darkYellow,
          ),
       // -- Build Painting
                AvailableTypesWidget(
            title: "Painting",
            image: ImageConstants.painting,
              bgColor: ColorConstants.darkShade1,
          ),
       // -- Build Beauty
                AvailableTypesWidget(
            title: "Beauty",
            image: ImageConstants.beuty,
              bgColor: ColorConstants.yellow,
          ),
       // -- Build Painting
                AvailableTypesWidget(
            title: "Appliance",
            image: ImageConstants.appliance,
              bgColor: ColorConstants.skyBlue,
          ),
       // -- Build arrowForward
                AvailableTypesWidget(
            title: "See All",
            image: ImageConstants.arrowForward,
              bgColor: ColorConstants.white,
          ),
       // -- Build Painting


        ],
      ),
    );
  }
}


///----------- Build Promoted Bussiness
///
class _BuildPromotedBusiness extends StatelessWidget {
  const _BuildPromotedBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
    alignment: Alignment.topLeft,
    margin: EdgeInsets.only(left: 18,right: 18,top: 8),
    padding: EdgeInsets.only(left: 13,right: 13,top: 13,bottom: 20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      children: [
/// Build promoted Bussiness title
        Row(
          children: [
            Container(
              width: 5,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorConstants.yellow
              ),
            ),
            SizedBox(width: 12,),
            Text("Promoted Business",
            style: TextStyle(
              fontFamily: FontsConstants.Poppins_Black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color:  ColorConstants.purpleShade2
            ),),
            Spacer(),
            Container(
              padding: EdgeInsets.only(top: 12,bottom: 12,left: 18,right: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(115),
                border: Border.all(color: ColorConstants.whiteShade2),


              ),
              child: const Text("See All",
              style: TextStyle(
                color: ColorConstants.darkShade2,
                fontSize: 18,
                fontFamily: FontsConstants.Poppins_Black,
              ),),
            ),
          ],
        ),

 ///  ----------Build horizontal list for cursol slider
      Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 17),
        height: 237,
        child: ListView.builder(
          shrinkWrap: true,
            itemCount: 12,
            scrollDirection:Axis.horizontal ,
            itemBuilder: (context,index){
              return Container(
                width: 160,
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 160,
                          height: 177,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(ImageConstants.demo)
                            )
                          ),

                        ),
                        Container(
                          width: 124,
                          height: 26,
                         alignment: Alignment.center ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
                            color: ColorConstants.yellow
                          ),
                          child: Text("Promoted"),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(6),
                            child: Image.asset(ImageConstants.heartBorder,width: 20,),
                          ),
                        )
                      ],
                    ),

                    /// ttile 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Home Cleaning",
                        style: TextStyle(
                          fontFamily: FontsConstants.Poppins_Black,
                          fontSize: 15,fontWeight: FontWeight.w500,
                          color: ColorConstants.purpleColor
                        ),),
                        Text("\$12",
                        style: TextStyle(
                            fontFamily: FontsConstants.Poppins_Black,
                            fontSize: 15,fontWeight: FontWeight.w700,
                          color: ColorConstants.greenColor
                        ),)
                      ],
                    ),
                    SizedBox(height: 6,),
                    ///Desc
                    Row(
                      children: [
                        Image.asset(ImageConstants.distancePin,height: 13,width: 12,),
                        SizedBox(width: 8),
                        Text("1.2 miles",
                          style:  TextStyle(
                                fontFamily: FontsConstants.Urbanist,
                                fontSize: 14,fontWeight: FontWeight.w500,
                            color: ColorConstants.greyShadeColor
                            )),
                        Spacer(),
                        Image.asset(ImageConstants.ratingStarts,width: 13,height: 13,),
                        SizedBox(width: 8),
                        Text("4.8",
                        style: TextStyle(
                            fontFamily: FontsConstants.Urbanist,
                            fontSize: 14,fontWeight: FontWeight.w500,
                            color: ColorConstants.greyShadeColor
                        ),)
                      ],
                    ),
                  ],
                ),
              );
        }),
      ),

      ],
    )
    );
  }
}



///  Build tile popular business or new business
//        class _BuildTilePopularBusinessORNewBusiness extends StatelessWidget {
//           _BuildTilePopularBusinessORNewBusiness({super.key});
//
//          @override
//          Widget build(BuildContext context) {
//            return TabBar(
//              controller,
//              tabs: [
//                Text("Popular Business"),
//                Text("New Business")
//              ],
//            );
//          }
//        }
