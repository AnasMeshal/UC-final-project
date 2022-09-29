// main.dart
import 'package:final_porject/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: 'myBag',
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            darkTheme: ThemeData(
                primarySwatch: Colors.red,
                primaryColor: Colors.black,
                backgroundColor: Colors.black,
                indicatorColor: Color(0xff0E1D36),
                hintColor: Color(0xff280C0B),
                highlightColor: Color(0xff372901),
                hoverColor: Color(0xff3A3A3B),
                focusColor: Color(0xff0B2512),
                disabledColor: Colors.grey,
                cardColor: Color(0xFF151515),
                canvasColor: Colors.black,
                brightness: Brightness.dark,
                buttonTheme: Theme.of(context).buttonTheme.copyWith(
                      colorScheme: ColorScheme.dark(),
                    )),
            themeMode: currentMode,
            home: Home(),
          );
        });
  }
}
