import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imun_2023/aippm.dart';
import 'package:imun_2023/historical_comittee.dart';
import 'package:imun_2023/international_press.dart';
import 'package:imun_2023/lok_portfolio.dart';
import 'package:imun_2023/lok_sabha.dart';
import 'package:imun_2023/return_of_legends.dart';
import 'package:imun_2023/unodc.dart';
import 'package:imun_2023/unstd.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> Images = [
      "assets/images/Lok_Sabha.png",
      "assets/images/Return_of_legends.png",
      "assets/images/AIPPM.png",
      "assets/images/ip_purple.png",
      "assets/images/UNCSTD.png",
      "assets/images/UNODC.png",
    ];
    List<String> Title = [
      "Lok Sabha",
      "Return Of Legends",
      "All India Political Parties Meet",
      "International Press",
      "UNCSTD",
      "UNODC",
    ];
    List<Widget>Screens = [
      LokSabha(),
      ReturnofLegends(),
      Aippm(),
      InternationalPress(),
      Unstd(),
      Unodc(),
    ];
    
    List<Color>Colors = [
      Color(0xFF84FF09),
      Color(0xFFEE3939),
      Color(0xFFE69714),
      Color(0x8EC2AFD9),
      Color(0xFFD5104B),
      Color(0xFFDA3B3B),
    ];

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
              Image.asset("assets/images/mun_logo.png", height: 45,),
              SizedBox(
                width: 10
              ),
              Text(
                'Committees',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 32,
                  fontFamily: 'Istok Web',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ],
          ),
        ),

          Container(
            padding: EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: ListView.builder(
                itemCount: Images.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => Screens[index]));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0x8E6F6B61),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Images[index], height: 50, width: 50,),
                              SizedBox(
                                width: 10,
                              ),
                              Text(Title[index],style: GoogleFonts.adamina(color: Colors[index], fontSize: 15))
                            ],
                          ),
                          Icon(Icons.chevron_right, opticalSize: 50,)
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          // GridView.count(
          //   crossAxisCount: 1,
          //   crossAxisSpacing: 18,
          //   mainAxisSpacing: 35,
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (_) => LokSabha()));
          //         },
          //         child: Image.asset(
          //           "assets/images/Lok_Sabha.png",
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(
          //               context, MaterialPageRoute(builder: (_) => Aippm()));
          //         },
          //         child: Image.asset(
          //           "assets/images/AIPPM.png",
          //           height: 100,
          //           width: 100,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => HistoricalComittee ()));
          //         },
          //         child: Image.asset(
          //           "assets/images/historical_comittee.png",
          //           height: 500,
          //           width: 500,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => ReturnofLegends()));
          //         },
          //         child: Image.asset(
          //           "assets/images/Return_of_legends.png",
          //           height: 500,
          //           width: 500,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => Unstd()));
          //         },
          //         child: Image.asset(
          //           "assets/images/UNCSTD.png",
          //           height: 500,
          //           width: 500,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => Unodc()));
          //         },
          //         child: Image.asset(
          //           "assets/images/UNODC.png",
          //           height: 500,
          //           width: 500,
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //           Navigator.push(context, MaterialPageRoute(builder: (_) => InternationalPress()));
          //         },
          //         child: Container(
          //           child: Image.asset(
          //             "assets/images/IP_RB_2.0.png",
          //             height: 500,
          //             width: 500,
          //           ),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.black54,
          //       ),
          //       child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //             backgroundColor: Colors.black12,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(20))),
          //         onPressed: () {
          //         },
          //         child: const Center(
          //           child: Text("Check Here For Study Guide", style: TextStyle(fontSize: 20, color: Colors.white)),
          //         ),
          //         ),
          //       ),
          //   ],
          // ),
        ],
      ),
    ),
        ));
  }
}
