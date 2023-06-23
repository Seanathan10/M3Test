import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tabs/tab1.dart';
import 'tabs/tab2.dart';
import 'tabs/tab3.dart';
import 'tabs/tab4.dart';
import 'tabs/tab5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return MaterialApp(
      title: 'Tabs Demo',

/*
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        brightness: Brightness.light,
        useMaterial3: true,
      ),
*/
      theme: ThemeData(
        // ColorScheme.fromSwatch(
        //   primarySwatch: Colors.blue,
        //   accentColor: Colors.blueAccent,
        //   brightness: Brightness.light,
        // ),
        primaryColor: Colors.blue.shade900,
        useMaterial3: true,
      ),

      darkTheme: ThemeData.dark(
        
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.account_balance_wallet_rounded)),
                Tab(icon: Icon(Icons.question_mark))
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [Tab1(), Tab2(), Tab3(), Tab4(), Tab5()],
          ),
        ),
      ),
    );
  }
}
