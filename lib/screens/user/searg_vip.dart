import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/theme/colors.dart';

class searchVipScreen extends StatefulWidget {
  const searchVipScreen({Key? key}) : super(key: key);

  @override
  _searchVipScreenState createState() =>
      _searchVipScreenState();
}

class _searchVipScreenState
    extends State<searchVipScreen> {
  String dropdownValue2 = 'هل يوجد أولاد';
  List<String> reads2 = ['هل يوجد أولاد', 'لا يوجد', 'يوجد'];

  String dropdownValue3 = 'الحالة الإجتماعية';
  List<String> reads3 = ['الحالة الإجتماعية', 'أعزب', 'مطلق', 'أرمل'];

  String dropdownValueden = 'الدين';
  List<String> reads4 = ['الدين', 'مسلم', 'مسيحي'];

  String dropdownValuetype = 'أنواع الزواج';
  List<String> reads5 = ['أنواع الزواج', 'عادي', ' متعدد'];
  String _selectedGender3 = 'زوج';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myPurpule,
        title: Text(
          'البحث عن شريك',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLightPrimary,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * .4,
                                  height:
                                      MediaQuery.of(context).size.height * .21,
                                  child: Image.asset(
                                    "assets/images/couples1.png",
                                    width:
                                        MediaQuery.of(context).size.width * .4,
                                    height:
                                        MediaQuery.of(context).size.height * .1,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .13,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * .4,
                                  height:
                                      MediaQuery.of(context).size.height * .21,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        ' البحث عن ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xff671055),
                                            fontSize: 14),
                                      ),
                                      ListTile(
                                        leading: Radio<String>(
                                          value: 'زوج',
                                          groupValue: _selectedGender3,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedGender3 = value!;
                                            });
                                          },
                                        ),
                                        title: const Text('زوج'),
                                      ),
                                      ListTile(
                                        leading: Radio<String>(
                                          value: 'زوجة',
                                          groupValue: _selectedGender3,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedGender3 = value!;
                                            });
                                          },
                                        ),
                                        title: const Text('زوجة'),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        //  SizedBox(
                        //     height: MediaQuery.of(context).size.height * .01,
                        //   ),
                        //-----------------------------------------------------------------------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'الجنسية'),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .23,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'البلد'),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'المنطقة'),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'المدينة'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'العمل'),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'الشهادة'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'الوزن'),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                decoration:
                                    const InputDecoration(hintText: 'العمر'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .3,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: DropdownButton<String>(
                                value: dropdownValuetype,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: Colors.black,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValuetype = newValue!;
                                  });
                                },
                                items: reads5.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .3,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: DropdownButton<String>(
                                value: dropdownValueden,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: Colors.black,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValueden = newValue!;
                                  });
                                },
                                items: reads4.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: DropdownButton<String>(
                                value: dropdownValue3,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: Colors.black,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue3 = newValue!;
                                  });
                                },
                                items: reads3.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .3,
                              height: MediaQuery.of(context).size.height * 0.08,
                              child: DropdownButton<String>(
                                value: dropdownValue2,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  height: 2,
                                  color: Colors.black,
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue!;
                                  });
                                },
                                items: reads2.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: ElevatedButton(
                            child: Text(
                              "بحث",
                              style: TextStyle(color: Color(0xff671055)),
                            ),
                            onPressed: () {
                           
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize: const Size(125, 50),
                              maximumSize: const Size(125, 50),
                            ),
                          ),
                        ),
                          SizedBox(height: MediaQuery.of(context).size.height*.02,),
                      ],
                    ),
                  ),

                  // SizedBox(

                  //            height: MediaQuery.of(context).size.height * 0.25,
                  // ),

                  //Here is the button

                  //Here just a space after all
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
