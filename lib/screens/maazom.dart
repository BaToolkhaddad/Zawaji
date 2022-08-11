import 'package:flutter/material.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/theme/colors.dart';
import 'package:zwajib/screens/user/secondscreen.dart';
import 'package:zwajib/screens/fierstscreen.dart';

class MaazonScreen extends StatefulWidget {
  const MaazonScreen({Key? key}) : super(key: key);

  @override
  _MaazonScreenState createState() => _MaazonScreenState();
}

class _MaazonScreenState extends State<MaazonScreen> {
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
                                          "assets/images/book1.png",
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
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .5,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .05,
                                        child: Text(
                                          'المأذون',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        )),
                                  ]),
                              // SizedBox(
                              //   height: MediaQuery.of(context).size.height * .1,
                              // ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .6,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .15,
                                        child: Text(
                                          'يوفر موقعنا حساب مأذون تستطيع التواصل معه وتحديد موعد والاتفاق على بقية التفاصيل ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        )),
                                  ]),
                             
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
                                          builder: (context) => FirstScreen()),
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
