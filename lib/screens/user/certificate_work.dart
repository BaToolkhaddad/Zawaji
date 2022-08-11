


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

class CertificateWorkScreen extends StatefulWidget {
  const CertificateWorkScreen({Key? key}) : super(key: key);

  @override
  _CertificateWorkScreenState createState() => _CertificateWorkScreenState();
}

class _CertificateWorkScreenState extends State<CertificateWorkScreen> {
  TextEditingController deatilscertific = new TextEditingController();
  TextEditingController skeills = new TextEditingController();

   @override
  void initState() {
    super.initState();
    deatilscertific.addListener(_printLatestValue);
    skeills.addListener(_printLatestValue);
  
  }

  @override
  void dispose() {
    deatilscertific.dispose();
    skeills.dispose();

    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter Deatils your certificate: ${deatilscertific.text}');
    print('please Enter your Skeills: ${skeills.text}');
  
  }


   
   String? dropdownValuece;
  SelectorDetails? selectorDropDownValuece;
  
  
   String? dropdownValuew;
  SelectorDetails? selectorDropDownValuew;
  
  @override
  Widget build(BuildContext context) {
     final selectorDetailsce =
        Provider.of<SelectorDetailsProvider>(context, listen: false);

         final selectorDetailsw =
        Provider.of<SelectorDetailsProvider>(context, listen: false);


    return Form(
      child: FutureBuilder(
          future: Future.wait(
              [
                selectorDetailsce.getSelectorDetails('partnerscientificdegree'),
                selectorDetailsw.getSelectorDetails('partnerwork'),
              
              ]),
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
                                            'الشهادة و العمل ',
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
                                                 items: selectorDetailsce.items
                                                 
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
                                          color: Colors.white,
                                        ),
                                        width: MediaQuery.of(context).size.width * .8,
                                        height:
                                            MediaQuery.of(context).size.height * .1,
                                        child: TextField(
                                          controller: deatilscertific,
                                      
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
                                              Text(
                                              'العمل',
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
                                                value: selectorDropDownValuew,
                                                elevation: 16,
                                                style: const TextStyle(
                                                    color: Colors.black),
                                                underline: Container(
                                                  height: 2,
                                                  color: Colors.purple[50],
                                                ),
                                                onChanged: (SelectorDetails? newValue) {
                                                  setState(() {
                                                     selectorDropDownValuew = newValue!;
                                                  });
                                                   selectorDropDownValuew == null ?"" : newValue;
                                                },
                                                 items: selectorDetailsw.items
                                                 
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
                                      'مهارات إضافية',
                                      textAlign: TextAlign.right,
                                        style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        width: MediaQuery.of(context).size.width * .8,
                                        height:
                                            MediaQuery.of(context).size.height * .08,
                                        child: TextField(
                                           controller: skeills,
                                       
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: '',
                                            hintText: '',
                                          ),
                                          autofocus: false,
                                        )
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
                                              NationalLocationScreen()),
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
