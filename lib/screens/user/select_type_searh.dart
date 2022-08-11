import 'package:flutter/material.dart';
import 'package:zwajib/theme/colors.dart';

import 'package:zwajib/screens/user/search.dart';
import 'package:zwajib/screens/user/search_with_Quran_memorizers.dart';
import 'package:zwajib/screens/user/search_with_ special_needs.dart';
import 'package:zwajib/screens/user/searg_vip.dart';
class SelectTypeSearchScreen extends StatefulWidget {
  const SelectTypeSearchScreen({Key? key}) : super(key: key);

  @override
  _SelectTypeSearchScreenState createState() => _SelectTypeSearchScreenState();
}

class _SelectTypeSearchScreenState extends State<SelectTypeSearchScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: myPurpule,
          title: Text(
            '',
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
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .1,
                                          child: Text(
                                            'أهلا بك عزيزي المشترك ابحث عن شريك حياتك',
                                             textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ]),
                                    
                              ),
                          SizedBox(height: MediaQuery.of(context).size.height*.1,),
                          
//___________________________________________________
  Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    
                               
                                    Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                   shape: BoxShape.circle,
                                                color: Colors.white,
                                                ),
                                                width: MediaQuery.of(context).size.width * .4,
                                                height:
                                                    MediaQuery.of(context).size.height * .3,
                                                      child: Image.asset(
                                    "assets/images/person.png",
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height:
                                        MediaQuery.of(context).size.height * .3,
                                  ),
                                               ),
                                                Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "عادي",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              searchOrdinaryScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(200, 100),
                                    maximumSize: const Size(200, 100),
                                  ),
                                ),
                              ),
                                            
                                          ],
                                        ),
                          SizedBox(width:    MediaQuery.of(context).size.width * .1 ,)    ,  
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        
                                        ),
                                        width: MediaQuery.of(context).size.width * .4,
                                        height:
                                                MediaQuery.of(context).size.height * .3,
                                                  child: Image.asset(
                                    "assets/images/vip.png",
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height:
                                        MediaQuery.of(context).size.height * .3,
                                  ),
                                        ),
                                        Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "ViP",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              searchVipScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(200, 100),
                                    maximumSize: const Size(200, 100),
                                  ),
                                ),
                              ),
                                             ],
                                           ),
                                          ],
                                    ),
SizedBox(height: MediaQuery.of(context).size.height * .1,),
                                       Row(
                                   crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
color: Colors.white,
                                            
                                                ),
                                                width: MediaQuery.of(context).size.width * .4,
                                                height:
                                                    MediaQuery.of(context).size.height * .3,
                                                      child: Image.asset(
                                    "assets/images/special.png",
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height:
                                        MediaQuery.of(context).size.height * .3,
                                  ),
                                                ),
                                                Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: ElevatedButton(
                                  child: Text(
                                    "ذوي احتياجات خاصة",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SearchWithSpecialNeeds()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(200, 150),
                                    maximumSize: const Size(200, 150),
                                  ),
                                ),
                              ),
                                          ],
                                        ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .1,),
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      
                                        ),
                                        width: MediaQuery.of(context).size.width * .4,
                                        height:
                                                MediaQuery.of(context).size.height * .3,
                                                  child: Image.asset(
                                    "assets/images/book2.png",
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height:
                                        MediaQuery.of(context).size.height * .3,
                                  ),
                                        ),
                                    Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "حفظة القرآن",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SearchWithQuranMemorizersScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(200, 100),
                                    maximumSize: const Size(200, 100),
                                  ),
                                ),
                              ),
                                               
                                             ],
                                           ),
                                          ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height * .05,
                                    ),
                               
                                  ],
                                ),
                              ),
   //___________________________________________
   
                                
                                            
                                  
                            
                               SizedBox(height: MediaQuery.of(context).size.height*.03,),
                            ]))))));
  }
}
