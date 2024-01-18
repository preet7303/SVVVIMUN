import 'package:flutter/material.dart';
import 'package:imun_2023/rof_portfolio.dart';
import 'package:imun_2023/rol_study.dart';

class ReturnofLegends extends StatefulWidget {
  const ReturnofLegends({Key? key}) : super(key: key);

  @override
  State<ReturnofLegends> createState() => _ReturnofLegendsState();
}

class _ReturnofLegendsState extends State<ReturnofLegends> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset("assets/images/rol_white.png", height: 200, width:200,),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => RofPortfolio()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) => RolStudy()));
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
