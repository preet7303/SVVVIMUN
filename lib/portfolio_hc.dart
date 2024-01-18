import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:imun_2023/main.dart';


class PortfolioHistorical extends StatefulWidget {
  const PortfolioHistorical({Key? key}) : super(key: key);

  @override
  State<PortfolioHistorical> createState() => _PortfolioHistoricalState();
}

class _PortfolioHistoricalState extends State<PortfolioHistorical> {

  final auth = FirebaseAuth.instance ;
  final ref = FirebaseDatabase.instance.ref("MUN Portfolio").child("Historical");
  var setData= FirebaseDatabase.instance.ref("MUN Portfolio").set("value");

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
                        width: MediaQuery.of(context).size.width / 1,
                        height: 200,
                        child: Image.asset("assets/images/historical_comittee.png")),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.deepPurpleAccent
                      ),
                      child: Center(
                        child: Text(
                          "PORTFOLIO",
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FirebaseAnimatedList(
                          query: ref,
                          itemBuilder: (context, snapshot, animation, index) {
                            return Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: ListTile(
                                    title: Text(
                                      snapshot.child('Name').value.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: ListTile(
                                    title: Text(
                                        snapshot.child('Portfolio').value.toString(),
                            style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ]
              )),
        ));
  }
}
