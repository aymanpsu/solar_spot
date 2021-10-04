import 'dart:convert';

// List<EfficiencyEstimation> estimationFromJson(String jsonData) {
//   final data = json.decode(jsonData);
//   return List<EfficiencyEstimation>.from(
//       data.map((item) => EfficiencyEstimation.fromJson(item)));
// }

String estimationToJson(EfficiencyEstimation data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

enum TimeFrame { monthly, daily, hourly }

class EfficiencyEstimation {
  String? name;
  double? latitude;
  double? longitude;
  TimeFrame? type;
  String? starFrom;
  String? endAt;
  List<String>? dataIncluded;

  EfficiencyEstimation(
    this.name,
    this.latitude,
    this.longitude,
    this.type,
    this.starFrom,
    this.endAt,
    this.dataIncluded,
  );

  EfficiencyEstimation.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        latitude = json['latitude'] as double?,
        longitude = json['longitude'] as double?,
        type = json['type'] as TimeFrame?,
        starFrom = json['starFrom'] as String?,
        endAt = json['endAt'] as String?,
        dataIncluded = json['dataIncluded'] as List<String>?;

  Map<String, dynamic> toJson() => {
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "type": type,
        "starFrom": starFrom,
        "endAt": endAt,
        "dataIncluded": dataIncluded,
      };
}
