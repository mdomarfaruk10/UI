import 'package:flutter/material.dart';
import 'package:webcoderit/widget/_custom_container_widget.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text"),
      ),
      body:SingleChildScrollView (
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 324,
                width: 324,
                child: Stack(
                  children: [
                    Ink.image(image: AssetImage("assets/onboardingImage.jpg"),fit: BoxFit.fill,),
                    Positioned.fill(child: Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipPath(
                        clipper: MyClipper(),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xffFF0000).withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.facebook,color: Colors.white,),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.facebook,color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                    )),


                  ],
                ),
              ),
              Container(
                alignment: Alignment(50,0),
                height: 52,
                width: 324,
                color: Color(0xffFF0000),
                child: ListTile(
                  title: Text("Monir Ahamma \nCEO & Founder",style: TextStyle(color: Colors.white),),

                ),
              ),
              CustomContainerWidget(
                height:325,
                width:327,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.computer,size: 55,),
                    Text('Web Development',textAlign: TextAlign.center,style: TextStyle(fontSize: 25),),
                    Text('Web development refers to building, '
                        'creating, and maintaining websites. '
                        'It includes aspects such as web design, '
                        'web publishing, web programming,'
                        ' and database management.'
                        ' While the terms "web developer"'
                        ' and "web designer" are often used synonymously, '
                        'they do not mean the same thing.',style: TextStyle(fontSize: 17),),
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(size.height*1, size.height*60);
    path.lineTo(size.width*1, size.width*.11);
     path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>false;
  
}
