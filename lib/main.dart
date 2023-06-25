import 'package:flutter/gestures.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class ShowGlobalSnackBar {

}

class _MyAppState extends State<MyApp> {
  Color globalBackgroundColor = Colors.transparent;

  // static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void changeGlobalBackgroundColor(Color colour) {
    setState(() {
      globalBackgroundColor = colour;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent));
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    // SystemChrome.setEnabledSystemUIMode( SystemUiMode.manual, overlays: [] );

    return MaterialApp(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      title: 'Tabs Demo',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        // ColorScheme.fromSwatch(
        //   primarySwatch: Colors.blue,
        //   accentColor: Colors.blueAccent,
        //   brightness: Brightness.light,
        // ),
        // primaryColor: Colors.blue.shade900,
        /*
        colorScheme: ColorScheme.fromSwatch(
          cardColor: Colors.blue.shade600,
          primarySwatch: Colors.red,
          accentColor: Colors.amberAccent,
          backgroundColor: Colors.cyan,
          errorColor: Colors.indigo,
          

          brightness: Brightness.light,
        ),
      */
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
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                rootScaffoldMessengerKey.currentState?.showSnackBar(const SnackBar(content: Text("Global floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161)));
              },
              child: const Icon(Icons.announcement_sharp)
              ),
          appBar: AppBar(
            // backgroundColor: const Color.fromARGB(255, 61, 61, 61),
            // shadowColor: Colors.green,
            // surfaceTintColor: Colors.limeAccent,
            bottom: TabBar(
              onTap: (int unusedPlaceholder) {
                HapticFeedback.heavyImpact();
              },
              enableFeedback: true, // this does nothing, created onTap instead
              dragStartBehavior: DragStartBehavior.start,
              // dragStartBehavior:,
              tabs: const [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.account_balance_wallet_rounded)),
                Tab(icon: Icon(Icons.question_mark))
                // Tab(icon: Icon(Icons.question_mark), text: "Help",)
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Tab1(
                backgroundColor: globalBackgroundColor,
                // passedRootScaffoldMessengerKey: rootScaffoldMessengerKey,
              ),
              Tab2(
                backgroundColor: globalBackgroundColor,
              ),
              Tab3(
                backgroundColor: globalBackgroundColor,
                handleGlobalBackgroundColourChange: changeGlobalBackgroundColor,
              ),
              Tab4(
                backgroundColor: globalBackgroundColor,
              ),
              Tab5(
                backgroundColor: globalBackgroundColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
