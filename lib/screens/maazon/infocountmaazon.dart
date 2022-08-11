

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/maazon/info_person_maazon.dart';


class InfoCountMaazonScreen extends StatefulWidget {
  const InfoCountMaazonScreen({Key? key}) : super(key: key);

  @override
  _InfoCountMaazonScreenState createState() => _InfoCountMaazonScreenState();
}

class _InfoCountMaazonScreenState extends State<InfoCountMaazonScreen> {
   TextEditingController emailmaazon = new TextEditingController();
  TextEditingController namemaazon = new TextEditingController();
  TextEditingController passwordmaazon = new TextEditingController();
  TextEditingController cofirmpasswordmaazon = new TextEditingController();

  
 @override
  void initState() {
    super.initState();
    emailmaazon.addListener(_printLatestValue);
    namemaazon.addListener(_printLatestValue);
    passwordmaazon.addListener(_printLatestValue);
    cofirmpasswordmaazon.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    emailmaazon.dispose();
    namemaazon.dispose();
    passwordmaazon.dispose();
    cofirmpasswordmaazon.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your email: ${emailmaazon.text}');
    print('please Enter your Name: ${namemaazon.text}');
    print('please Enter your Pssword: ${passwordmaazon.text}');
    print('please Enter your password again: ${cofirmpasswordmaazon.text}');
  }


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
                                            'معلومات حساب المأذون',
                                             textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ]),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * .5,
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
                                              'رقم الهاتف أو عنوان البريد الالكتروني',
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
                                                  controller: emailmaazon,
                                               textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                            validator: (value) {
                                        value = emailmaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إيميلك');
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
                                              'اسم المستخدم',
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
                                              'كلمة المرور',
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
                                                   controller: passwordmaazon,
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                                              validator: (value) {
                                        value = passwordmaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال كلمة المرور');
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
                                              'تأكيد كلمة المرور',
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
                                                 controller: cofirmpasswordmaazon,
                                              //   onChanged: (Value){
                                              // if (cofirmpasswordmaazon==passwordmaazon) {
                                              //   return print('تم إنشاء الحساب');
                                                
                                              // } else {
                                              //   print('الرجاء إعادة إدخال كلمة السر ');
                                              // }
                                              //   },
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                         validator: (value) {
                                        value = cofirmpasswordmaazon as String?;
                                        if (value!.isEmpty || cofirmpasswordmaazon!=passwordmaazon) {
                                          print('  الرجاء إعادة إدخال كلمة مرور');
                                        }
                                        else
                                        {print('تم تأكيد حسابك');}
                                      },
                                      onSaved: (value) {},
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
                                          builder: (context) =>
                                              InfoPersonMaazonScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    minimumSize: const Size(150, 75),
                                    maximumSize: const Size(150, 75),
                                  ),
                                ),
                              ),
                            ]))))));
  }
}
