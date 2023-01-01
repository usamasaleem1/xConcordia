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
        if (webOccupancy == '' || int.parse(webOccupancy) < 0) {
          webOccupancy = '0';
        }
        if (int.parse(webOccupancy) == 0) {
          webLevel = 'Empty';
        } else if (int.parse(webOccupancy) > 100) {
          webLevel = 'High';
        } else if (int.parse(webOccupancy) > 75 &&
            int.parse(webOccupancy) < 100) {
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
        } else if (int.parse(greyOccupancy) > 100) {
          greyLevel = 'High';
        } else if (int.parse(greyOccupancy) > 50 &&
            int.parse(greyOccupancy) < 100) {
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
        } else if (int.parse(vannierOccupancy) > 100) {
          vannierLevel = 'High';
        } else if (int.parse(vannierOccupancy) > 50 &&
            int.parse(vannierOccupancy) < 100) {
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
              color: Color.fromARGB(162, 114, 68, 251),
              ),
            )
          : Container(
              padding: const EdgeInsets.only(left: 0),
              margin: const EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  LibraryStatsHeader(),
                  const Padding(padding: EdgeInsets.all(10)),
                  libCards(), //libCards widget is in a file called libraryCards
                  const crashClass(), //category picker
                ],
              ),
            ),
    );
  }
}
