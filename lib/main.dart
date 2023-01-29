import 'package:flutter/material.dart';
import 'package:tesla_control_ui/teslaControlHome.dart';

void main() {
  runApp(TeslaControlApp());
}

class CustomError extends StatelessWidget {
  CustomError({Key? key, this.errorDetails}) : super(key: key);
  FlutterErrorDetails? errorDetails;
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          color: Colors.tealAccent,
          child: Center(
              child: Text(errorDetails.toString(),
                  style: TextStyle(color: Colors.black))))
    ]);
  }
}


class TeslaControlApp extends StatelessWidget {
  TeslaControlApp({super.key});
  ThemeMode _themeMode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tesla Control Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      builder: (BuildContext context, Widget? widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          return CustomError(errorDetails: errorDetails);
        };
        return widget!;
      },
      home: const TeslaControlHome(),
    );
  }
}


