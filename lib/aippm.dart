import 'package:flutter/material.dart';
import 'package:imun_2023/aippm_portfolio.dart';
import 'package:imun_2023/aippm_study.dart';

class Aippm extends StatefulWidget {
  const Aippm({Key? key}) : super(key: key);

  @override
  State<Aippm> createState() => _AippmState();
}

class _AippmState extends State<Aippm> {
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
                          Image.asset("assets/images/aippm_white.png", height: 75,),
                          SizedBox(
                              width: 10
                          ),
                          Text(
                            'All Inida Political\n'
                                ' Parties Meet',
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
                    Image.asset("assets/images/aippm_white.png", height: 250, width:250,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => PortfolioAippm()));
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) => AippmStudy()));
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
