import 'package:flutter/material.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/numberphone.dart';
import 'package:zwajib/screens/khataba/number_phone_khataba.dart';
import 'package:zwajib/screens/maazon/numberphonemaazon.dart';

class TypeacountScreen extends StatefulWidget {
  const TypeacountScreen({Key? key}) : super(key: key);

  @override
  _TypeacountScreenState createState() => _TypeacountScreenState();
}

class _TypeacountScreenState extends State<TypeacountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: myPurpule,
          title: Text(
            'حدد نوع الحساب',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
        
        
        body: SafeArea(
          
            child: Padding(
              
                padding: const EdgeInsets.all(1),
                child: Container(
                  
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff671055),
                    child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                SizedBox(height: MediaQuery.of(context).size.height*.1,),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    
                                            Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "مشترك",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NumberphoneScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              ),
                              
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        child: Image.asset(
                                          "assets/images/couples2.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .2,
                                        ),
                                      ),
                                     
                                    ]),



                                    

                              ),
                              SizedBox(width: MediaQuery.of(context).size.height*.05,),
                      Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                            Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "خطابة",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => numberPhoneKhatabaScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        child: Image.asset(
                                          "assets/images/khataba.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .2,
                                        ),
                                      ),
                                     
                                    ]),
                                    SizedBox(width: MediaQuery.of(context).size.height*.05,),
                                     Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                            Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "مأذون",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => numberPhoneMaazonScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .4,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .2,
                                        child: Image.asset(
                                          "assets/images/maazon.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .2,
                                        ),
                                      ),
                                     
                                    ]),
                         
                            ]))))));
  }
}

