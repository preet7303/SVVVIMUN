import 'package:flutter/material.dart';
import 'package:imun_2023/uncstd_portfolio.dart';
import 'package:imun_2023/uncstd_study.dart';

class Unstd extends StatefulWidget {
  const Unstd({Key? key}) : super(key: key);

  @override
  State<Unstd> createState() => _UnstdState();
}

class _UnstdState extends State<Unstd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Color(0xff27374D)),

              child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: BoxDecoration(color: Color(0xFFE79815)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset("assets/images/UNCSTD_white.png", height: 75,),
                          ),
                          SizedBox(
                              width: 40
                          ),
                          Text(
                            'UNCSTD',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF5F5F5),
                              fontSize: 30,
                              fontFamily: 'Istok Web',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset("assets/images/UNCSTD_white.png", height: 200, width:200,),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => UncstdPortfolio()));
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            'Portfolio',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Inknut Antiqua',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 75,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE79815),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => UncstStudy()));
                      } ,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Study Guide',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Inknut Antiqua',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: 75,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE79815),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )

                          ],
                        ),

                      ),
                    ),
                  ]),
            )));
  }
}
