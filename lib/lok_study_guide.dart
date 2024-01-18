import 'package:flutter/material.dart';

class StudyGuide extends StatefulWidget {
  const StudyGuide({Key? key}) : super(key: key);

  @override
  State<StudyGuide> createState() => _StudyGuideState();
}

class _StudyGuideState extends State<StudyGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, -0.2),
                  colors: [
                    Colors.orangeAccent,
                    Colors.grey,
                  ],
                ),
              ),
              child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 70,
                              height: 70,
                              child: Image.asset("assets/images/svvv_logo.png")),
                          Container(
                              width: 70,
                              height: 70,
                              child: Image.asset("assets/images/mun_logo.png"))
                        ],
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 1.6,
                        height: 100,
                        child: Image.asset("assets/images/Lok_Sabha.png")),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green
                      ),
                      child: Center(
                        child: Text(
                          "Study Guide",
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text("Study Guide content Here")
                  ]
              )),
        ));
  }
}
