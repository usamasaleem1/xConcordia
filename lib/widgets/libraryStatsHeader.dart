// ignore: file_names
import '../views/home_page.dart';
import 'package:flutter/material.dart';

class LibraryStatsHeader extends StatefulWidget {
  const LibraryStatsHeader({
    Key? key,
    
  }) : super(key: key);

  @override
  State<LibraryStatsHeader> createState() => _LibraryStatsHeaderState();
}

class _LibraryStatsHeaderState extends State<LibraryStatsHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    color: Color.fromARGB(255, 33, 36, 39),
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
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28.0),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  onPressed: () {},
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
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: const Text(
                'Live count of the number of people',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 5),
              //button to refresh the state
              // child: OutlinedButton(
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(28.0),
              //         side: const BorderSide(color: Colors.red),
              //       ),
              //     ),
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       onRefresh:
              //       () => _refreshProducts(context);
              //     });
              //   },
              //   child: const Icon(Icons.refresh),
              // ),
            ),
          ],
        ),
      ],
    );
  }
}
