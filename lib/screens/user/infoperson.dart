import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:zwajib/provider/selector_details_provider.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/infoformal.dart';

class infopersonScreen extends StatefulWidget {
  const infopersonScreen({Key? key}) : super(key: key);

  @override
  _infopersonScreenState createState() => _infopersonScreenState();
}

class _infopersonScreenState extends State<infopersonScreen> {
   TextEditingController nameusr = new TextEditingController();
  TextEditingController namefamileusr = new TextEditingController();
  TextEditingController datebirthusr = new TextEditingController();
   TextEditingController phonewakel = new TextEditingController();
     TextEditingController hobbies = new TextEditingController();
       TextEditingController infofamily = new TextEditingController();
       
  
 @override
  void initState() {
    super.initState();
    nameusr.addListener(_printLatestValue);
    namefamileusr.addListener(_printLatestValue);
    datebirthusr.addListener(_printLatestValue);
    phonewakel.addListener(_printLatestValue);
    hobbies.addListener(_printLatestValue);
    infofamily.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    nameusr.dispose();
    namefamileusr.dispose();
    datebirthusr.dispose();
    phonewakel.dispose();
    hobbies.dispose();
    infofamily.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('please Enter your Name: ${nameusr.text}');
    print('please Enter Name your Family  : ${namefamileusr.text}');
    print('please Enter your Date Birth: ${datebirthusr.text}');
    print('please Enter phone Agent : ${phonewakel.text}');
    print('please Enter your Hobbis : ${hobbies.text}');
    print('please speak about your Family : ${infofamily.text}');
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
                                            'المعلومات الشخصية',
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
                                                  controller: nameusr,
                                                
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = nameusr as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال  إسمك');
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
                                                   controller: namefamileusr,
                                               
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = infofamily as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال إسم عائلتك ');
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
                                                    controller: datebirthusr,
                                                
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = datebirthusr as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال تاريخ ميلادك ');
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
                                              'رقم هاتف الوكيل الشرعي',
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
                                                    controller: phonewakel,
                                               
                                                textAlign: TextAlign.right,
                                                decoration:
                                                    const InputDecoration(
                                                        hintText: ''),
                                                          validator: (value) {
                                        value = phonewakel as String?;
                                        if (value!.isEmpty) {
                                          print('الرجاء إدخال رقم هاتف وكيلك الشرعي ');
                                        }
                                      },
                                      onSaved: (value) {},  
                                  
                                              ),
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
                                      'الهوايات',
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
                                            MediaQuery.of(context).size.height * .05,
                                        child: TextField(
                                               controller: hobbies,    
                                                textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: '',
                                            hintText: '',
                                          ),
                                          
                                          
                                    
                                       
                                        )
                                   
                                        ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height * .03,
                                    ),
                                    Text(
                                      'معلومات العائلة',
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
                                            MediaQuery.of(context).size.height * .05,
                                        child: TextField(
                                           controller: infofamily,
                                             
                                                textAlign: TextAlign.right,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: '',
                                            hintText: '',
                                          ),
                                          
                                          autofocus: false,
                                        )),
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
                                          builder: (context) => infoformalScreen()),
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
