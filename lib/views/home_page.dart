import 'package:xconcordia/services/remote_service.dart';
import 'package:flutter/material.dart';

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
        print("web occ1: " + libraryTime.toString());
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
        if (int.parse(webOccupancy) > 100) {
          webLevel = 'High';
        } else if (int.parse(webOccupancy) > 50 &&
            int.parse(webOccupancy) < 100) {
          webLevel = 'Medium';
        } else {
          webLevel = 'Low';
        }
        isLoading = false;
        print("web occ1: " + webOccupancy.toString());
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
      String? occupancy = await getDataAPI_V().getPosts();
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

  double height = 115;
  double width = 115;
  double cornerRadius = 30;
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: const Text(
                              'Library Stats',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 55, 55, 55),
                              ),
                            ),
                          ),
                          Text(
                            'Last Updated: ' + libTime,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  const Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Webster',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              webOccupancy,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Text(
                              webLevel,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(170, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(109, 255, 88, 11),
                              offset: Offset(0, 5),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(cornerRadius),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 252, 151, 0),
                              Color.fromARGB(255, 245, 67, 55),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Grey Nuns',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              greyOccupancy,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              greyLevel,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(170, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(120, 2, 83, 141),
                              offset: Offset(0, 5),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(cornerRadius),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 18, 179, 200),
                              Color.fromARGB(255, 0, 95, 136),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              'Vanier',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              vannierOccupancy,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              vannierLevel,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(170, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                        height: height,
                        width: width,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(123, 20, 175, 64),
                              offset: Offset(0, 5),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(cornerRadius),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 25, 207, 159),
                              Color.fromARGB(255, 33, 147, 57)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ],
                  ),
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
