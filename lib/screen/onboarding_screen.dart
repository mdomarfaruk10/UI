import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webcoderit/utils/color.dart';
class MyOnboardingScreen extends StatefulWidget {
  const MyOnboardingScreen({Key? key}) : super(key: key);

  @override
  State<MyOnboardingScreen> createState() => _MyOnboardingScreenState();
}

class _MyOnboardingScreenState extends State<MyOnboardingScreen> {
  final Controler =PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/onboardingImage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 450,left: 10,right: 10),
          height: 300,
          child: Stack(
            children: [
              PageView(
                controller: Controler,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.linearGradientColor_4.withOpacity(0.4),
                            AppColors.linearGradientColor_3.withOpacity(0.7),
                            AppColors.linearGradientColor_4.withOpacity(0.8),
                          ],
                        )
                    ),
                    child:Column(
                      children: [
                      Text("Let`s Start Growing Your Skill",maxLines: 2,style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("The compoete App to start learning new skill and growing your skill",maxLines: 2,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal),),
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.linearGradientColor_4.withOpacity(0.4),
                            AppColors.linearGradientColor_3.withOpacity(0.7),
                            AppColors.linearGradientColor_4.withOpacity(0.8),
                          ],
                        )
                    ),
                    child:Column(
                      children: [
                        Text("Let`s Start Growing Your Skill",maxLines: 2,style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("The compoete App to start learning new skill and growing your skill",maxLines: 2,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal),),
                      ],
                    ),),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            AppColors.linearGradientColor_4.withOpacity(0.4),
                            AppColors.linearGradientColor_3.withOpacity(0.7),
                            AppColors.linearGradientColor_4.withOpacity(0.8),
                          ],
                        )
                    ),
                    child:Column(
                      children: [
                        Text("Let`s Start Growing Your Skill",maxLines: 2,style: TextStyle(fontSize: 34,color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("The compoete App to start learning new skill and growing your skill",maxLines: 2,style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment(0,0.75),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap:(){
                        Controler.jumpToPage(2);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)
                        ),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: Controler,
                      count: 3,
                      effect:  WormEffect(
                          paintStyle:  PaintingStyle.stroke,
                           strokeWidth:  1.5,
                          dotColor:  Colors.white,
                          activeDotColor:  Colors.yellow
                      ),
                    ),

                    InkWell(
                      onTap:(){
                        Controler.nextPage(
                          duration:Duration(milliseconds: 500) ,
                          curve:Curves.easeIn,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)


                        ),
                        child: Text("Next",style: TextStyle(color: Colors.white),),
                      ),
                    )

                  ],
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
