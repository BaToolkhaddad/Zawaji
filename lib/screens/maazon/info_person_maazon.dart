

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:zwajib/provider/selector_details_provider.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/maazon/infolocationmaazon.dart';

class InfoPersonMaazonScreen extends StatefulWidget {
  const InfoPersonMaazonScreen({Key? key}) : super(key: key);

  @override
  _InfoPersonMaazonScreenState createState() => _InfoPersonMaazonScreenState();
}

class _InfoPersonMaazonScreenState extends State<InfoPersonMaazonScreen> {
   TextEditingController namemaazon = new TextEditingController();
  TextEditingController fathermaazon = new TextEditingController();
  TextEditingController grandpamaazon = new TextEditingController();
  TextEditingController familymaazon = new TextEditingController();
   TextEditingController datbirmaazon = new TextEditingController();
  TextEditingController numcartmaazon = new TextEditingController();
    
  
 @override
  void initState() {
    super.initState();
    namemaazon.addListener(_printLatestValue);
    fathermaazon.addListener(_printLatestValue);
    grandpamaazon.addListener(_printLatestValue);
    familymaazon.addListener(_printLatestValue);
    datbirmaazon.addListener(_printLatestValue);
    numcartmaazon.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    namemaazon.dispose();
    fathermaazon.dispose();
    grandpamaazon.dispose();
    familymaazon.dispose();
    datbirmaazon.dispose();
    numcartmaazon.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your Name: ${namemaazon.text}');
    print('please Enter Name your Father : ${fathermaazon.text}');
    print('please Enter Name your Grandpa: ${grandpamaazon.text}');
    print('please Enter phone Family : ${familymaazon.text}');
    print('please Enter Date your Birth : ${datbirmaazon.text}');
    print('please Enter nuber your cart: ${numcartmaazon.text}');
  }
 
  String? dropdownValue;
  SelectorDetails? selectorDropDownValue;
  
  @override
  Widget build(BuildContext context) {
     final selectorDetails =
        Provider.of<SelectorDetailsProvider>(context, listen: false);

    return Form(
      child: FutureBuilder(
          future: Future.wait(
              [selectorDetails.getSelectorDetails('partnergender')]),
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
                                            ' المعلومات الشخصية للمأذون',
                                             textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ]),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * .65,
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
                                            Text(
                                              'الإسم',
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
                                                  0.05,
                                              child: TextFormField(
                                                  controller: namemaazon,
                                             
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = namemaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إسمك');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                            Text(
                                              'اسم الأب',
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
                                                  0.05,
                                              child: TextFormField(
                                                      controller: fathermaazon,
                                               
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = fathermaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إسم الأب');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                              Text(
                                              'اسم الجد',
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
                                                  0.05,
                                              child: TextFormField(
                                                      controller: grandpamaazon,
                                              
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = grandpamaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إسم الجد');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                              Text(
                                              'اسم العائلة',
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
                                                  0.05,
                                              child: TextFormField(
                                                    controller: familymaazon,
                                               
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = familymaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إسم العائلة');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                            Text(
                                              'الجنس',
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
                                                value: selectorDropDownValue,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.purple[50],
                                                ),
                                                onChanged: (SelectorDetails? newValue) {
                                                  setState(() {
                                                     selectorDropDownValue = newValue!;
                                                  });
                                                   selectorDropDownValue == null ?"" : newValue;
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
                                            Text(
                                              'تاريخ الميلاد',
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
                                                  0.05,
                                              child: TextFormField(
                                                    controller: datbirmaazon,
                                              
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = datbirmaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال تاريخ ميلادك');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                              Text(
                                              'رقم البطاقة الشخصية',
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
                                                  0.05,
                                              child: TextFormField(
                                                    controller: numcartmaazon,
                                            
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = numcartmaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال رقم البطاقة الشخصية');
                                        }
                                      },
                                      onSaved: (value) {},
                                     
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                              Text(
                                              'الصورة الشخصية',
                                              textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 15 ),
                                            ),
                                           Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "اختر ملف",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                   
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              
                              ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                                          Text(
                                              'صورة البطاقة الشخصية',
                                              textAlign: TextAlign.right,
                                                style: TextStyle(fontSize: 15 ),
                                            ),
                                           Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "اختر ملف",
                                    style: TextStyle(color: Color(0xff671055)),
                                  ),
                                  onPressed: () {
                                 
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              
                              ),
                                          ],
                                        ),
                                      ))),
                           
                           
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
                                          builder: (context) => infoLocationMaazonScreen()),
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
