import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imun_2023/abc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imun_2023/home_page2.dart';
import 'package:imun_2023/login.dart';

void main() async {
  var ensureInitialized = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SVVVIMUN',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SVVVIMUN Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xff27374D)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("SVVVIMUN-2023",
                      style: GoogleFonts.judson(
                          fontSize: 45, color: Colors.orangeAccent))),
              Center(
                  child: Text("Empowering Minds",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Colors.orangeAccent))),
              Center(
                  child: Text("Enriching Perspectives, Embracing Change",
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Colors.orangeAccent))),
              SizedBox(

                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                  child: Image.asset("assets/images/new_mun_logo.png")),
              SizedBox(

                height: 50,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.6,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.abhayaLibre(
                        color: Colors.white,
                        fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
