import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imun_2023/main.dart';

class RofPortfolio extends StatefulWidget {
  const RofPortfolio({Key? key}) : super(key: key);

  @override
  State<RofPortfolio> createState() => _RofPortfolioState();
}

class _RofPortfolioState extends State<RofPortfolio> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref("MUN Portfolio").child("ROL");

  @override
  Widget build(BuildContext context) {
    debugPrint(ref.toString());
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xff27374D)),
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(color: Color(0xFFE79815)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/rol_white.png",
                    height: 70,
                  ),
                  //SizedBox(width: 10),
                  Text(
                    'Return of Legends ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontSize: 25,
                      fontFamily: 'Istok Web',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.05,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent),
                    child: Center(
                      child: Text("PORTFOLIOS",
                          style: GoogleFonts.abyssinicaSil(fontSize: 30)),
                    ),
                  ),
                  Expanded(
                    child: FirebaseAnimatedList(
                        query: ref,
                        itemBuilder: (context, snapshot, animation, index) {
                          return Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 2.22,
                                child: ListTile(
                                  title: Text(
                                      snapshot.child('Name').value.toString(),
                                      style: GoogleFonts.adamina(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                child: ListTile(
                                  title: Text(
                                    snapshot
                                        .child('Portfolio')
                                        .value
                                        .toString(),
                                    style: GoogleFonts.adamina(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ])),
    ));
    ;
  }
}
