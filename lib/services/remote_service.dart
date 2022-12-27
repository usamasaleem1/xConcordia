// ignore_for_file: camel_case_types
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xconcordia/models/post.dart';
import 'package:intl/intl.dart';

class getDataAPI {
  Future<String?> getPosts() async {
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
      return library.webster.occupancy;
    } else {
      print(response.statusCode);
    }
    return null;
  }
}

class getDataAPI_V {
  Future<String?> getPosts() async {
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
      print("vannier: " + library.vanier.occupancy);
      return library.vanier.occupancy;
    } else {
      print(response.statusCode);
    }
    return null;
  }
}

class getDataAPI_G {
  Future<String?> getPosts() async {
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
      print("greynuns: " + library.greyNuns.occupancy);
      return library.greyNuns.occupancy;
    } else {
      print(response.statusCode);
    }
    return null;
  }
}

class getDataAPI_time {
  Future<String?> getPosts() async {
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
      final DateFormat formatter = DateFormat('jm');
      print("time: " + formatter.format(library.vanier.lastRecordTime));
      return formatter.format(library.vanier.lastRecordTime);
    } else {
      print(response.statusCode);
    }
    return null;
  }
}
