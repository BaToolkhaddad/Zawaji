import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/user/infoperson.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class infocountScreen extends StatefulWidget {
  const infocountScreen({Key? key}) : super(key: key);

  @override
  _infocountScreenState createState() => _infocountScreenState();
}

class _infocountScreenState extends State<infocountScreen> {
  TextEditingController emailusr = new TextEditingController();
  TextEditingController nameusr = new TextEditingController();
  TextEditingController passwordusr = new TextEditingController();
  TextEditingController cofirmpasswordusr = new TextEditingController();

  
  
 @override
  void initState() {
    super.initState();
    emailusr.addListener(_printLatestValue);
    nameusr.addListener(_printLatestValue);
    passwordusr.addListener(_printLatestValue);
    cofirmpasswordusr.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    emailusr.dispose();
    nameusr.dispose();
    passwordusr.dispose();
    cofirmpasswordusr.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your email: ${emailusr.text}');
    print('please Enter your Name: ${nameusr.text}');
    print('please Enter your Pssword: ${passwordusr.text}');
    print('please Enter your password again: ${cofirmpasswordusr.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: myPurpule,
          title: Text(
            '',
            style: TextStyle(color: Color.fromARGB(0, 255, 255, 255)),
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
                                            'معلومات الحساب',
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
                                                controller: emailusr,
                                            
                                            
                                              
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                            validator: (value) {
                                        value = emailusr as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال الإيميل');
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
                                                  controller: nameusr,
                                               
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                            validator: (value) {
                                        value = nameusr as String?;
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
                                                  controller: passwordusr,
                                              
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                            validator: (value) {
                                        value = passwordusr as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال كلمة مرور');
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
                                                controller: cofirmpasswordusr,
                                              //   onChanged: (Value){
                                              // if (cofirmpasswordusr==passwordusr) {
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
                                        value = cofirmpasswordusr as String?;
                                        if (value!.isEmpty || cofirmpasswordusr!=passwordusr) {
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
                                              infopersonScreen()),
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
