

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/typeacount.dart';
import 'package:zwajib/screens/maazon/confirmcodemaazon.dart';



class numberPhoneMaazonScreen extends StatefulWidget {
  const numberPhoneMaazonScreen({Key? key}) : super(key: key);

  @override
  _numberPhoneMaazonScreenState createState() => _numberPhoneMaazonScreenState();
}

class _numberPhoneMaazonScreenState extends State<numberPhoneMaazonScreen> {
  TextEditingController numphonmaazon = new TextEditingController();

 @override
  void initState() {
    super.initState();
    numphonmaazon.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    numphonmaazon.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your Numberphon: ${numphonmaazon.text}');
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                        child: Image.asset(
                                          "assets/images/couples1.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .3,
                                        ),
                                      ),
                                    ]),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .1,
                              ),
                               Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          
                            Container(
                             
                              decoration: BoxDecoration(
                                 color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
      ),                      
                              width: MediaQuery.of(context).size.width * .5,
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: TextFormField(
                                controller: numphonmaazon,
                                textAlign: TextAlign.center,
                                decoration:
                               
                                    const InputDecoration(hintText: ' رقم الهاتف' ),
                                  
                                     validator: (value) {
                                        value = numphonmaazon as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال رقم الهاتف ');
                                        }
                                      },
                                      onSaved: (value) {},
                                    ),
                              ),
                            
                          ],
                        ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .1,
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
                                          builder: (context) => ConfirmCodeMaazonScreen()),
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

