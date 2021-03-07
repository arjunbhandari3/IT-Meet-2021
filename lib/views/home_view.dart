import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:itmeet/views/widgets/social_button.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  YoutubePlayerController _controller;
  int endTime = DateTime.parse("2021-04-05 00:00:00Z").millisecondsSinceEpoch;

  @override
  void initState() {
    super.initState();
    String videoId;
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=8RlIhqCXGVY&ab_channel=KathmanduUniversityComputerClub");
    print(videoId);
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      // '8RlIhqCXGVY',
      flags: YoutubePlayerFlags(
        hideControls: true,
        autoPlay: true,
        mute: false,
        loop: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> introTexts(context) => [
        Text(
          "Welcome to IT Meet 2021",
          style: Theme.of(context).textTheme.headline5,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "One of the greatest IT event of Nepal",
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "IT MEET is a non-profit event organized by the students of the Department Of Computer Science and Engineering, Kathmandu University. IT MEET has grown into one of the premier IT Events in Nepal, offering a unique opportunity for students to express their talents and to make themselves aware of the current IT trends in Nepal.",
          style: Theme.of(context).textTheme.caption.copyWith(fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 15.0),
            CountdownTimer(
              endTime: endTime,
              widgetBuilder: (_, CurrentRemainingTime time) {
                return time == null
                    ? Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Welcome',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'to',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 24.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Text(
                                  time.days != null ? '${time.days}' : '00',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Text(
                                  time.hours != null ? '${time.hours}' : '00',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  time.min != null ? '${time.min}' : '00',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 45,
                                ),
                                Text(
                                  time.sec != null ? '${time.sec}' : '00',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(),
                                Text(
                                  'days',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text('hrs',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  'mins',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  'secs',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(height: 25.0),
                            Text(
                              'Until',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 23.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
              },
            ),
            Text(
              'IT MEET 2021',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'नवदृष्टि: Unraveling New Perspectives',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 25.0),
            Text(
              'March 5\u{1d57}\u{02b0} -7\u{1d57}\u{02b0}, 2021\nKathmandu University\nDhulikhel, Kavre',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  Get.toNamed('/rootView', arguments: 1);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff29B6E3), Color(0xffF404FE)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Register Now!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 60.0,
              child: OutlineButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff13C8E0),
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Sponsor",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Spacer(),
                SocialMediaButton(
                  icon: FontAwesomeIcons.globe,
                  url: "http://kucc.ku.edu.np/itmeet/",
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.facebook,
                  url: "https://www.facebook.com/KUITMEET/",
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.instagram,
                  url: "https://www.instagram.com/kuitmeet/",
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.twitter,
                  url: "https://twitter.com/KUITMEET/",
                ),
                SocialMediaButton(
                  icon: FontAwesomeIcons.envelope,
                  url: "mailto:kucc@ku.edu.np",
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );

    // AnimatedContainer(
    //   duration: Duration(milliseconds: 500),
    //   color: Theme.of(context).backgroundColor,
    //   child: SafeArea(
    //     child: Scaffold(
    //       appBar: AppBar(
    //         title: Text(
    //           "Home",
    //           style: Theme.of(context).textTheme.headline5,
    //         ),
    //         centerTitle: true,
    //         backgroundColor: Theme.of(context).backgroundColor,
    //         actions: <Widget>[
    //           IconButton(
    //             icon: Icon(
    //               Get.isDarkMode ? Icons.wb_sunny : Icons.nights_stay,
    //               color: Theme.of(context).hintColor,
    //               size: 22,
    //             ),
    //             onPressed: () {
    //               t.changeTheme();
    //             },
    //           ),
    //         ],
    //       ),
    //       body: SingleChildScrollView(
    //         child: Container(
    //           padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Container(
    //                 padding: const EdgeInsets.all(5),
    //                 child: Image.asset(
    //                   'assets/images/banner.png',
    //                   width: Get.width,
    //                   height: Get.height * 0.3,
    //                   fit: BoxFit.fill,
    //                   filterQuality: FilterQuality.high,
    //                 ),
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(
    //                     10.0,
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               Container(
    //                 child: YoutubePlayer(
    //                     controller: _controller,
    //                     showVideoProgressIndicator: false),
    //               ),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //               ...introTexts(context),
    //               SizedBox(
    //                 height: 20,
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
