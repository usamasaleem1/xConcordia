import 'package:xconcordia/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:xconcordia/widgets/crashClass.dart';
import '../widgets/libraryCards.dart';
import '../widgets/libraryStatsHeader.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var webb = '';
String webOccupancy = '';
String greyOccupancy = '';
String vannierOccupancy = '';
String libTime = '';
String webLevel = '';
String greyLevel = '';
String vannierLevel = '';


class _HomePageState extends State<HomePage> {
  refresh() {
    setState(() {});
  } 
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _fetchWebOccupancy();
    _fetchVannierOccupancy();
    _fetchGreyOccupancy();
    _fetchLibTime();
  }

  Future<void> _fetchLibTime() async {
    if (libTime == '') {
      String? libraryTime = await getDataAPI_time().getPosts();
      setState(() {
        libTime = libraryTime.toString();
      });
    }
  }

  Future<void> _fetchWebOccupancy() async {
    if (webOccupancy == '') {
      String? occupancy = await getDataAPI().getPosts();
      setState(() {
        webOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (int.parse(webOccupancy) < 0) {
          webOccupancy = '0';
        }
        if (int.parse(webOccupancy) == 0) {
          webLevel = 'Empty';
        } else if (int.parse(webOccupancy) >= 750) {
          webLevel = 'High';
        } else if (int.parse(webOccupancy) > 200 &&
            int.parse(webOccupancy) < 750) {
          webLevel = 'Medium';
        } else {
          webLevel = 'Low';
        }
        isLoading = false;
      });
    }
  }

  Future<void> _fetchGreyOccupancy() async {
    if (greyOccupancy == '') {
      String? occupancy = await getDataAPI_G().getPosts();
      setState(() {
        greyOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (greyOccupancy == '' || int.parse(greyOccupancy) < 0) {
          greyOccupancy = '0';
        }
        if (int.parse(greyOccupancy) == 0) {
          greyLevel = 'Empty';
        } else if (int.parse(greyOccupancy) >= 200) {
          greyLevel = 'High';
        } else if (int.parse(greyOccupancy) > 100 &&
            int.parse(greyOccupancy) < 200) {
          greyLevel = 'Medium';
        } else {
          greyLevel = 'Low';
        }
        isLoading = false;
      });
    }
  }

  Future<void> _fetchVannierOccupancy() async {
    if (vannierOccupancy == '') {
      String? occupancy = await getDataAPI_V().getPosts();
      setState(() {
        vannierOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (vannierOccupancy == '' || int.parse(vannierOccupancy) < 0) {
          vannierOccupancy = '0';
        }
        if (int.parse(vannierOccupancy) == 0) {
          vannierLevel = 'Empty';
        } else if (int.parse(vannierOccupancy) >= 250) {
          vannierLevel = 'High';
        } else if (int.parse(vannierOccupancy) > 50 &&
            int.parse(vannierOccupancy) < 250) {
          vannierLevel = 'Medium';
        } else {
          vannierLevel = 'Low';
        }
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(
              child: LinearProgressIndicator(
                color: Color.fromARGB(0, 114, 68, 251),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 0),
                margin: const EdgeInsets.only(top: 20, left: 5),
                child: Column(
                  children: [
                    Column(
                      // the title "Library Stats", and the last updated time, and live count text
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 20),
                                child: const Text(
                                  '📖 Library',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w800,
                                    // color: Color.fromARGB(255, 33, 36, 39),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Last Updated: ' + libTime,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 15),
                                //button to refresh the state
                                child: OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                        side:
                                            const BorderSide(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    webOccupancy = '';
                                    greyOccupancy = '';
                                    vannierOccupancy = '';
                                    libTime = '';
                                    webLevel = '';
                                    greyLevel = '';
                                    vannierLevel = '';
                                    //call _fetchWebOccupancy from parent class
                                    _fetchWebOccupancy();
                                    _fetchGreyOccupancy();
                                    _fetchVannierOccupancy();
                                    _fetchLibTime();
                                  },
                                  child: const Icon(Icons.refresh),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(left: 20, top: 0),
                              child: const Text(
                                'Live count of the number of people',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    LibraryStatsHeader(),
                    const Padding(padding: EdgeInsets.all(10)),
                    libCards(), //libCards widget is in a file called libraryCards
                    const crashClass(), //category picker
                  ],
                ),
              ),
            ),
    );
  }
}
