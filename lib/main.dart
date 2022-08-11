

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zwajib/screens/user/search.dart';
import 'package:zwajib/screens/fierstscreen.dart';
import 'package:zwajib/screens/screenF.dart';
import 'package:zwajib/provider/selector_details_provider.dart';
import 'package:zwajib/models/selector_details_models.dart';
import 'package:zwajib/models/patern_models.dart';



void main() {
  
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,]);

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SelectorDetailsProvider>(create: (context) => SelectorDetailsProvider(),)
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'zawaji',
        home: ResponsiveSizer(
          builder: (BuildContext, Orientation, ScreenType) {
            return ScreenF();
          },
        ),
      ),
    );
  }
}
