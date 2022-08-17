import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zerobalance_assignment/core/providers.dart';
import 'package:zerobalance_assignment/presentation/home_screen/home_screen_without_kyc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: List.from(providers),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Zerobalance',
            home: child,
          );
        },
        child: const HomeScreen(),
      ),
    );
  }
}
