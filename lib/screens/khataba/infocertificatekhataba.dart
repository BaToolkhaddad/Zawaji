



import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:zwajib/provider/selector_details_provider.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/user/infoperson.dart';
import 'package:zwajib/screens/user/national_location.dart';

class InfoCertificateKhatabaScreen extends StatefulWidget {
  const InfoCertificateKhatabaScreen({Key? key}) : super(key: key);

  @override
  _InfoCertificateKhatabaScreenState createState() => _InfoCertificateKhatabaScreenState();
}

class _InfoCertificateKhatabaScreenState extends State<InfoCertificateKhatabaScreen> {
  TextEditingController certkhataba = new TextEditingController();

 @override
  void initState() {
    super.initState();
    certkhataba.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    certkhataba.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter Details of your certificate: ${certkhataba.text}');
  }

String? dropdownValuece;
  SelectorDetails? selectorDropDownValuece;
  
  @override
  Widget build(BuildContext context) {

     final selectorDetails =
        Provider.of<SelectorDetailsProvider>(context, listen: false);

    return Form(
      child: FutureBuilder(
          future: Future.wait(
              [selectorDetails.getSelectorDetails('partnerscientificdegree')]),
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
                                            'الشهادة',
                                             textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          )),
                                    ]),
                              ),
                              Container(
                                  height:
                                      MediaQuery.of(context).size.height * .4,
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
                                              'الشهادة',
                                              textAlign: TextAlign.right,
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
                                                value: selectorDropDownValuece,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.purple[50],
                                                ),
                                                onChanged: (SelectorDetails? newValue) {
                                                  setState(() {
                                                     selectorDropDownValuece = newValue!;
                                                  });
                                                   selectorDropDownValuece == null ?"" : newValue;
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
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .03,
                                            ),
                                            Text(
                                              'تفاصيل الشهادة',
                                              textAlign: TextAlign.right,
                                            ),
                                       Container(
                                        decoration: BoxDecoration(
                              
                                        ),
                                        width: MediaQuery.of(context).size.width * .8,
                                        height:
                                            MediaQuery.of(context).size.height * .1,
                                        child: TextField(
                                                controller: certkhataba,
                                             
                                                textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: '',
                                            hintText: '',
                                          ),
                                          autofocus: false,
                                        )),
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
                                    MediaQuery.of(context).size.height * .05,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .3,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                child: ElevatedButton(
                                  child: Text(
                                    "تأكيد",
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
                              SizedBox(height: MediaQuery.of(context).size.height*.03,),
                            ]))))));
  }));
  }
}
