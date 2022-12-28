// ignore_for_file: camel_case_types
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xconcordia/models/post.dart';
import 'package:intl/intl.dart';
import 'package:xconcordia/views/home_page.dart';

var vOccupancy = '';
var wOccupancy = '';
var gOccupancy = '';
var libTime = '';

class getDataAPI {
  Future<String?> getPosts() async {
    numApiCalls++;
    var credentials = '520:276377ba5206683e51d50fb86c378dc5';
// Encode the credentials in base64 format
    var base64Credentials = base64Encode(utf8.encode(credentials));

    var headers = {'Authorization': 'Basic $base64Credentials'};

    var request = http.Request('GET',
        Uri.parse('https://opendata.concordia.ca/API/v1/library/occupancy/'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String json = await response.stream.bytesToString();
      // ignore: await_only_futures
      Libraries library = await librariesFromJson(json);
      print("webster: " + library.webster.occupancy);
      vOccupancy = library.vanier.occupancy;
      wOccupancy = library.webster.occupancy;
      gOccupancy = library.greyNuns.occupancy;
      final DateFormat formatter = DateFormat('jm');
      libTime = formatter.format(library.vanier.lastRecordTime);
    } else {
      print(response.statusCode);
    }
    return null;
  }
}

getVannierOccupancy() {
  return vOccupancy;
}

getWebsterOccupancy() {
  return wOccupancy;
}

getGreyOccupancy() {
  return gOccupancy;
}

getLibraryTime() {
  bool flag = false;
  while (flag == false) {
    if (libTime != '') {
      flag = true;
      return libTime;
    }
  }
}
