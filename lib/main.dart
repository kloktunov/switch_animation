import 'package:flutter/material.dart';
import 'package:load_switch/load_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Color(0xFF9160f8),
        accentColor: Color(0xFF9160f8),


        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF9160f8),
          elevation: 0
        ),

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  bool value = false;

  Future<bool> loadData() async {
    
    await Future.delayed(
      const Duration(seconds: 1)
    );

    return !value;
  }





  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            


            LoadSwitch(
                value: value,
                future: loadData,
                spinColor: Color(0xFF9160f8),
                falseColor: Color(0xFFdcdcdc),
                trueColor: Color(0xFF9160f8),
                neutralColor: Color(0xFFdcdcdc),
                onChange: (v) {
                    setState(() {
                      value = v;
                    });
                },
                onTap: (v) {
                  
                },
            )













          ],
        ),
      ),
    );
  }
}
