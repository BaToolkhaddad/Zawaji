

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/khataba/infopersonkhataba.dart';


class InfoCountkhatabaScreen extends StatefulWidget {
  const InfoCountkhatabaScreen({Key? key}) : super(key: key);

  @override
  _InfoCountkhatabaScreenState createState() => _InfoCountkhatabaScreenState();
}

class _InfoCountkhatabaScreenState extends State<InfoCountkhatabaScreen> {
     TextEditingController emailkhataba = new TextEditingController();
  TextEditingController namekhataba = new TextEditingController();
  TextEditingController passwordkhataba = new TextEditingController();
  TextEditingController cofirmpasswordkhataba = new TextEditingController();

  
 @override
  void initState() {
    super.initState();
    emailkhataba.addListener(_printLatestValue);
    namekhataba.addListener(_printLatestValue);
    passwordkhataba.addListener(_printLatestValue);
    cofirmpasswordkhataba.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    emailkhataba.dispose();
    namekhataba.dispose();
    passwordkhataba.dispose();
    cofirmpasswordkhataba.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your email: ${emailkhataba.text}');
    print('please Enter your Name: ${namekhataba.text}');
    print('please Enter your Pssword: ${passwordkhataba.text}');
    print('please Enter your password again: ${cofirmpasswordkhataba.text}');
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
                                            'معلومات حساب الخطابة',
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
                                              controller: emailkhataba,
                                               textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = emailkhataba as String?;
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
                                              controller: namekhataba,
                                               textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = namekhataba as String?;
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
                                           controller: passwordkhataba,
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = passwordkhataba as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال مرور');
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
                                                controller: cofirmpasswordkhataba,
                                                    // onChanged: (Value){
                                              // if (cofirmpasswordkhataba==passwordkhataba) {
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
                                        value = cofirmpasswordkhataba as String?;
                                        if (value!.isEmpty || cofirmpasswordkhataba!=passwordkhataba) {
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
                                              InfoPersonKhatabaScreen()),
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
