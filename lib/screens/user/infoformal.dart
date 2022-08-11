import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:zwajib/provider/selector_details_provider.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/user/infoperson.dart';
import 'package:zwajib/screens/user/infosocial.dart';

class infoformalScreen extends StatefulWidget {
  const infoformalScreen({Key? key}) : super(key: key);

  @override
  _infoformalScreenState createState() => _infoformalScreenState();
}

class _infoformalScreenState extends State<infoformalScreen> {
     TextEditingController Length = new TextEditingController();
  TextEditingController weight = new TextEditingController();

   @override
  void initState() {
    super.initState();
    weight.addListener(_printLatestValue);
    Length.addListener(_printLatestValue);

  }

  @override
  void dispose() {
    weight.dispose();
    Length.dispose();

    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your Weight: ${weight.text}');
    print('please Enter your Length: ${Length.text}');
    
  }


   String dropdownValuetypehair = '';
  List<String> reads8 = ['سابل', 'ويفي', 'كيرلي', ''];
  
String? dropdownValuehair;
  SelectorDetails? selectorDropDownValuehair;
  
  @override
  Widget build(BuildContext context) {

     final selectorDetails =
        Provider.of<SelectorDetailsProvider>(context, listen: false);

    return Form(
      child: FutureBuilder(
          future: Future.wait(
              [selectorDetails.getSelectorDetails('partnerhairstyle')]),
          builder: (BuildContext ctx, AsyncSnapshot snapshotData) {
            if (snapshotData.connectionState == ConnectionState.waiting) {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            }
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
                                            'الصفات الشكلية',
                                             textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ]),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width * .8,
                                  color: Colors.white,
                                  child: SingleChildScrollView(
                                      physics: AlwaysScrollableScrollPhysics(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
             Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                              
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.purple[50],
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                      topLeft: Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                    ),
                                                  ),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .2,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  child: TextFormField(
                                                        controller: weight,
                                              
                                                textAlign: TextAlign.right,
                                                    decoration:
                                                        const InputDecoration(
                                                            hintText: ''),
                                                               validator: (value) {
                                        value = weight as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال وزنك ');
                                        }
                                      },
                                      onSaved: (value) {},  
                                                  ),
                                                ),
                                                  Text(
                                                  ' : الوزن',
                                                  textAlign: TextAlign.right,
                                                    style: TextStyle(fontSize: 15 ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .05,
                                                ),
                                              
                                              
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.purple[50],
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .2,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              child: TextFormField(
                                                    controller: Length,
                                                
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                           validator: (value) {
                                        value = Length as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال طولك ');
                                        }
                                      },
                                      onSaved: (value) {},  
                                              ),
                                            ),
                                              Text(
                                                  ' : الطول',
                                                  textAlign: TextAlign.right,
                                                    style: TextStyle(fontSize: 15 ),
                                                ),
                                            ],
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                               Text(
                                              'نوع الشعر',
                                              textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 15 ),
                                            ),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.purple[50],
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topLeft: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .7,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.055,
                                              child: DropdownButton<SelectorDetails>(
                                                
                                                icon: const Icon(
                                                    Icons.arrow_downward),
                                                value: selectorDropDownValuehair,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.purple[50],
                                                ),
                                                onChanged: (SelectorDetails? newValue) {
                                                  setState(() {
                                                     selectorDropDownValuehair = newValue!;
                                                  });
                                                   selectorDropDownValuehair == null ?"" : newValue;
                                                },
                                                 items: selectorDetails.items
                                                 
                                                .map<
                                                    DropdownMenuItem<SelectorDetails>>((value) {
                                                  return DropdownMenuItem<
                                                      SelectorDetails>(
                                                    value: value,
                                                    child: Text(value.pagecontentselectvaluetext!),
                                                    
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                          ],
                                        ),
                                      ))),



                                         SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .03,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    
                                    Text(
                                      ' : لون الشعر',
                                      textAlign: TextAlign.right,
                                        style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                
                                    ),
                                    Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                   shape: BoxShape.circle,
                                                  color: Colors.yellow,
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                               ),
                                                Row(
                                                  children: [
                                                    IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.yellow,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                    Text('أصفر' ,  style: TextStyle(color: Colors.white),),
                                                  ],
                                                ),
                                          ],
                                        ),
                          SizedBox(width:    MediaQuery.of(context).size.width * .1 ,)    ,  
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.red,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أحمر' ,  style: TextStyle(color: Colors.white),),
                                           ],
                                         ),
                                             ],
                                           ),
                                          ],
                                    ),
SizedBox(height: MediaQuery.of(context).size.height * .05,),
                                       Row(
                                   crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  
                                                  color: Colors.brown,
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                                ),
                                                 Row(
                                                   children: [
                                                     IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.brown,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                       Text('بني' ,  style: TextStyle(color: Colors.white),),
                                                   ],
                                                 ),
                                          ],
                                        ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .1,),
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.black,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أسود' ,  style: TextStyle(color: Colors.white),),
                                           ],
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
//___________________________________________________
  Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    
                                    Text(
                                      ' : لون العينين',
                                      textAlign: TextAlign.right,
                                        style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                
                                    ),
                                    Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                   shape: BoxShape.circle,
                                                
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                                      child: Image.asset(
                                    "assets/images/eye.png",
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height:
                                        MediaQuery.of(context).size.height * .05,
                                  ),
                                               ),
                                                Row(
                                                  children: [
                                                     IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                    Text('أزرق' ,  style: TextStyle(color: Colors.white),),
                                            
                                                  ],
                                                ),
                                          ],
                                        ),
                          SizedBox(width:    MediaQuery.of(context).size.width * .1 ,)    ,  
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        
                                        ),
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                                  child: Image.asset(
                                    "assets/images/eye.png",
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height:
                                        MediaQuery.of(context).size.height * .05,
                                  ),
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.green,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أخضر' ,  style: TextStyle(color: Colors.white),),
                                           ],
                                         ),
                                             ],
                                           ),
                                          ],
                                    ),
SizedBox(height: MediaQuery.of(context).size.height * .05,),
                                       Row(
                                   crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  
                                            
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                                      child: Image.asset(
                                    "assets/images/eye.png",
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height:
                                        MediaQuery.of(context).size.height * .05,
                                  ),
                                                ),
                                                 Row(
                                                   children: [
                                                     IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.brown,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                       Text('بني' ,  style: TextStyle(color: Colors.white),),
                                                   ],
                                                 ),
                                          ],
                                        ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .1,),
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      
                                        ),
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                                  child: Image.asset(
                                    "assets/images/eye.png",
                                    width:
                                        MediaQuery.of(context).size.width * .2,
                                    height:
                                        MediaQuery.of(context).size.height * .05,
                                  ),
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.black,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أسود' ,  style: TextStyle(color: Colors.white),),
                                           ],
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
   
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    
                                    Text(
                                      ' : لون البشرة',
                                      textAlign: TextAlign.right,
                                        style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                
                                    ),
                                    Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                   shape: BoxShape.circle,
                                                  color: Colors.brown[200],
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                               ),
                                                Row(
                                                  children: [
                                                    IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.brown[200],
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                    Text('حنطي' ,  style: TextStyle(color: Colors.white),),
                                                  ],
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
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.white,
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أبيض' ,  style: TextStyle(color: Colors.white),),
                                           ],
                                         ),
                                             ],
                                           ),
                                          ],
                                    ),
SizedBox(height: MediaQuery.of(context).size.height * .05,),
                                       Row(
                                   crossAxisAlignment:  CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  
                                                  color: Colors.brown[900],
                                                ),
                                                width: MediaQuery.of(context).size.width * .2,
                                                height:
                                                    MediaQuery.of(context).size.height * .05,
                                                ),
                                                 Row(
                                                   children: [
                                                     IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.brown[900],
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                       Text('أسمر جدا' ,  style: TextStyle(color: Colors.white),),
                                                   ],
                                                 ),
                                          ],
                                        ),
                                    SizedBox(width: MediaQuery.of(context).size.width * .1,),
                                           Column(
                                             children: [
                                               Container(
                                        decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                          color: Colors.brown[400],
                                        ),
                                        width: MediaQuery.of(context).size.width * .2,
                                        height:
                                                MediaQuery.of(context).size.height * .05,
                                        ),
                                         Row(
                                           children: [
                                             IconButton(
          icon: const Icon(Icons.check_circle),
          color: Colors.brown[400],
          onPressed: () {
            setState(() {
              Null;
            });
          },
        ),
                                                   Text('أسمر' ,  style: TextStyle(color: Colors.white ,fontSize: 15 ),),
                                           ],
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

                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .05,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "التالي",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              infosocialScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              ),
                               SizedBox(height: MediaQuery.of(context).size.height*.03,),
                            ]))))));
  }));
  }
}
