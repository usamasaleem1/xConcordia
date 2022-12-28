import 'package:xconcordia/services/remote_service.dart';
import 'package:flutter/material.dart';
import 'package:xconcordia/widgets/categoryPicker.dart';
import '../widgets/libraryCards.dart';
import '../widgets/libraryStatsHeader.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int numApiCalls = 0;
var webb = '';
String webOccupancy = '';
String greyOccupancy = '';
String vannierOccupancy = '';
String libTime = '';
String webLevel = '';
String greyLevel = '';
String vannierLevel = '';

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchWebOccupancy();
    _fetchVannierOccupancy();
    _fetchGreyOccupancy();
    _fetchLibTime();
  }

  Future<void> _fetchAPIdata() async {
    await getDataAPI().getPosts();
  }

  Future<void> _fetchLibTime() async {
    if (libTime == '') {
      libTime = await getLibraryTime();
      setState(() {
        libTime = libTime.toString();
        print("web occ1: " + libTime.toString());
      });
    }
  }

  Future<void> _fetchWebOccupancy() async {
    if (webOccupancy == '') {
      String? occupancy = await getDataAPI().getPosts();
      occupancy = getWebsterOccupancy();
      setState(() {
        webOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (webOccupancy == '' || int.parse(webOccupancy) < 0) {
          webOccupancy = '0';
        }
        if (int.parse(webOccupancy) > 100) {
          webLevel = 'High';
        } else if (int.parse(webOccupancy) > 75 &&
            int.parse(webOccupancy) < 100) {
          webLevel = 'Medium';
        } else {
          webLevel = 'Low';
        }
        isLoading = false;
        print("web occ1: " + webOccupancy.toString());
        print("Number of API Calls: " + numApiCalls.toString());
      });
    }
  }

  Future<void> _fetchGreyOccupancy() async {
    if (greyOccupancy == '') {
      String? occupancy = await getDataAPI().getPosts();
      occupancy = getGreyOccupancy();
      setState(() {
        greyOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (greyOccupancy == '' || int.parse(greyOccupancy) < 0) {
          greyOccupancy = '0';
        }
        if (int.parse(greyOccupancy) > 100) {
          greyLevel = 'High';
        } else if (int.parse(greyOccupancy) > 50 &&
            int.parse(greyOccupancy) < 100) {
          greyLevel = 'Medium';
        } else {
          greyLevel = 'Low';
        }
        isLoading = false;
        print(occupancy.runtimeType);
        print("grey occ1: " + greyOccupancy.toString());
      });
    }
  }

  Future<void> _fetchVannierOccupancy() async {
    if (vannierOccupancy == '') {
      String? occupancy = await getDataAPI().getPosts();
      occupancy = getVannierOccupancy();
      setState(() {
        vannierOccupancy = occupancy!.substring(0, occupancy.length - 5);
        if (vannierOccupancy == '' || int.parse(vannierOccupancy) < 0) {
          vannierOccupancy = '0';
        }
        if (int.parse(vannierOccupancy) > 100) {
          vannierLevel = 'High';
        } else if (int.parse(vannierOccupancy) > 50 &&
            int.parse(vannierOccupancy) < 100) {
          vannierLevel = 'Medium';
        } else {
          vannierLevel = 'Low';
        }
        isLoading = false;
        print("vannier occ1: " + vannierOccupancy.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // elevation: 15,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),

        title: const Text('X Concordia'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(223, 57, 25, 163),
                offset: Offset(0, 0),
                blurRadius: 20,
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.purple],
            ),
          ),
        ),
      ),
      body: isLoading
          ? const Center(
              child: LinearProgressIndicator(
                color: Color.fromARGB(162, 114, 68, 251),
              ),
            )
          : Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  LibraryStatsHeader(), //LibraryStatsHeader widget is in a file called libraryStatsHeader
                  const Padding(padding: EdgeInsets.all(10)),
                  libCards(), //libCards widget is in a file called libraryCards
                  const categoryPicker(),
                ],
              ),
            ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
