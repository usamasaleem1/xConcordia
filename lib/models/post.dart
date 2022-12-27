import 'dart:convert';

Libraries librariesFromJson(String str) => Libraries.fromJson(json.decode(str));

String librariesToJson(Libraries data) => json.encode(data.toJson());

class Libraries {
  Libraries({
    required this.webster,
    required this.vanier,
    required this.greyNuns,
  });

  GreyNuns webster;
  GreyNuns vanier;
  GreyNuns greyNuns;

  factory Libraries.fromJson(Map<String, dynamic> json) => Libraries(
        webster: GreyNuns.fromJson(json["Webster"]),
        vanier: GreyNuns.fromJson(json["Vanier"]),
        greyNuns: GreyNuns.fromJson(json["GreyNuns"]),
      );

  Map<String, dynamic> toJson() => {
        "Webster": webster.toJson(),
        "Vanier": vanier.toJson(),
        "GreyNuns": greyNuns.toJson(),
      };
}

class GreyNuns {
  GreyNuns({
    required this.occupancy,
    required this.lastRecordTime,
  });

  String occupancy;
  DateTime lastRecordTime;

  factory GreyNuns.fromJson(Map<String, dynamic> json) => GreyNuns(
        occupancy: json["Occupancy"].toString(),
        lastRecordTime: DateTime.parse(json["LastRecordTime"].toString()),
      );

  Map<String, dynamic> toJson() => {
        "Occupancy": occupancy,
        "LastRecordTime": lastRecordTime.toIso8601String(),
      };
}
