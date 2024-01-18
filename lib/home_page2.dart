import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imun_2023/abc.dart';
import 'package:url_launcher/url_launcher.dart';

_linkURL() async {
  Uri _url = Uri.parse('https://linktr.ee/svvvimun2k23?utm_source=linktree_admin_share&fbclid=PAAaaO9AsJhkLlFAvdRB7Pj8nubFXCxObc1oA8lB72h6NHZQ71H4pUbpPUn1Q');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}


class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xff27374D)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height : 70,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.8,
                child: Image.asset("assets/images/new_mun_logo.png")),
            Text("SVVVIMUN 2K23", style: GoogleFonts.abrilFatface(fontSize: 26, color: Colors.orangeAccent),),
            Text("05-07 October,2023", style: GoogleFonts.abrilFatface(fontSize: 16, color: Colors.orangeAccent),),
            SizedBox(
              height : 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => NextScreen()));
              },
              child: Container(
                width: 312,
                height: 65,
                decoration: ShapeDecoration(
                  color: Color(0xFFE69714),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Color(0xFFF5F5F5)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Committees",
                      style: GoogleFonts.abhayaLibre(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right, size: 35,),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Container(
                width: 312,
                height: 70,
                decoration: ShapeDecoration(
                  color: Color(0xFFE69714),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: Color(0xFFF5F5F5)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child:
                   GestureDetector(
                     onTap: () {

                     },
                     child: InkWell(
                       onTap: _linkURL,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 10.0),
                             child: Text(
                                "Link Tree",
                                style: GoogleFonts.abhayaLibre(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 10.0),
                             child: Image.asset("assets/images/link_tree_logo.png",
                               height: 35,),
                           ),
                         ],
                       ),
                     ),
                   ),

              ),
            )
          ],
        ),
      ),
    ) ,
    );
  }
}
