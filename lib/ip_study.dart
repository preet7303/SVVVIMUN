import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  Uri _url = Uri.parse('https://drive.google.com/drive/folders/1fwDsQ9nNyZ7QVcmPoi1KUoltYQfI0lNh?usp=sharing');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}


class IpStudy extends StatefulWidget {
  const IpStudy({Key? key}) : super(key: key);

  @override
  State<IpStudy> createState() => _IpStudyState();
}

class _IpStudyState extends State<IpStudy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Color(0xff27374D)),
            child: Column(children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(color: Color(0xFFE79815)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/ip_white.png",
                          height: 75,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'International Press',
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
                  Image.asset("assets/images/study_guide.png"),

                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      width: 333,
                      height: 82,
                      decoration: ShapeDecoration(
                        color: Color(0xFFE79815),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: InkWell(
                        onTap: _launchURL,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Click Here to download',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inder',
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                            Text(
                              'Study Guide',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inder',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )            ],
              ),
            ]),
          ),
        ));
  }
}
