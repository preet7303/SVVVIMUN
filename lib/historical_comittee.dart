import 'package:flutter/material.dart';
import 'package:imun_2023/portfolio_hc.dart';

class HistoricalComittee extends StatefulWidget {
  const HistoricalComittee({Key? key}) : super(key: key);

  @override
  State<HistoricalComittee> createState() => _HistoricalComitteeState();
}

class _HistoricalComitteeState extends State<HistoricalComittee> {
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
          child: Column(
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
                  height: 250,
                  child: Image.asset("assets/images/historical_comittee.png")),
              SizedBox(
                height: 20,
              ),
              Text(
                "HISTORICAL",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                child: Center(
                  child: Text(
                    "Addressing the Atrocities of 1990: Condemning Organized Terrorism and Seeking Justice for the Genocide of Kashmiris",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => PortfolioHistorical()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Check Your Portfolio Here",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
