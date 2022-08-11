import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/search_with_Quran_memorizers.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);
  static const routeName = 'search';
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String dropdownValue2 = 'هل يوجد أولاد';
  List<String> reads2 = ['هل يوجد أولاد', 'لا يوجد', 'يوجد'];

  String dropdownValue3 = 'الحالة الإجتماعية';
  List<String> reads3 = ['الحالة الإجتماعية', 'أعزب', 'مطلق', 'أرمل'];

  String dropdownValueden = 'الدين';
  List<String> reads4 = ['الدين', 'مسلم', 'مسيحي'];

  String dropdownValuetype = 'أنواع الزواج';
  List<String> reads5 = ['أنواع الزواج', 'عادي', ' متعدد'];

  String dropdownValuestate = 'الحالة الصحية';
  List<String> reads6 = ['الحالة الصحية', 'سليم', ' مريض'];

  String _selectedGender = 'نعم';
  String _selectedGender1 = 'نعم';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width * .8,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
                          decoration: const InputDecoration(hintText: 'العمل'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .2,
                        height: MediaQuery.of(context).size.height * 0.1,
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
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: const InputDecoration(hintText: 'الوزن'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .2,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: TextFormField(
                          textAlign: TextAlign.right,
                          decoration: const InputDecoration(hintText: 'العمر'),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .27,
                        height: MediaQuery.of(context).size.height * 0.1,
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
                          items: reads5
                              .map<DropdownMenuItem<String>>((String value) {
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
                        height: MediaQuery.of(context).size.height * 0.1,
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
                          items: reads4
                              .map<DropdownMenuItem<String>>((String value) {
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
                        width: MediaQuery.of(context).size.width * .35,
                        height: MediaQuery.of(context).size.height * 0.1,
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
                          items: reads3
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .1,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .35,
                        height: MediaQuery.of(context).size.height * 0.1,
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
                          items: reads2
                              .map<DropdownMenuItem<String>>((String value) {
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
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_downward),
                          value: dropdownValuestate,
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValuestate = newValue!;
                            });
                          },
                          items: reads6
                              .map<DropdownMenuItem<String>>((String value) {
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
                          width: MediaQuery.of(context).size.width * .8,
                          height: MediaQuery.of(context).size.height * .1,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'اشرح حالتك المرضية',
                              hintText: '',
                            ),
                            autofocus: false,
                          )),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('هل الحالة المريضة مزمنة ؟', textAlign: TextAlign.right),
                      ListTile(
                        leading: Radio<String>(
                          value: ' نعم',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('  نعم'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: '  لا ',
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                            });
                          },
                        ),
                        title: const Text('لا '),
                      ),
                    ],
                  ),




                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('هل الحالة المرضية منذ الولادة ؟', textAlign: TextAlign.right),
                      ListTile(
                        leading: Radio<String>(
                          value: ' نعم',
                          groupValue: _selectedGender1,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender1 = value!;
                            });
                          },
                        ),
                        title: const Text('  نعم'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: ' لا',
                          groupValue: _selectedGender1,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender1 = value!;
                            });
                          },
                        ),
                        title: const Text('لا'),
                      ),
                    ],
                  ),










                  
                ],
              ),
            ),

            // SizedBox(

            //            height: MediaQuery.of(context).size.height * 0.25,
            // ),

            //Here is the button

            //Here just a space after all
          ),
        ),
      ),
    );
  }
}
