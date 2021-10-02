// To parse this JSON data, do
//
//     final nasaData = nasaDataFromJson(jsonString);

// import 'dart:convert';

// NasaData nasaDataFromJson(String str) => NasaData.fromJson(json.decode(str));

// String nasaDataToJson(NasaData data) => json.encode(data.toJson());

// class NasaData {
//     NasaData({
//         this.type,
//         this.geometry,
//         this.properties,
//         this.header,
//         this.messages,
//         this.parameters,
//         this.times,
//     });

//     String type;
//     Geometry geometry;
//     Properties properties;
//     Header header;
//     List<String> messages;
//     Map<String, Parameter> parameters;
//     Times times;

//     factory NasaData.fromJson(Map<String, dynamic> json) => NasaData(
//         type: json["type"],
//         geometry: Geometry.fromJson(json["geometry"]),
//         properties: Properties.fromJson(json["properties"]),
//         header: Header.fromJson(json["header"]),
//         messages: List<dynamic>.from(json["messages"].map((x) => x)),
//         parameters: Map.from(json["parameters"]).map((k, v) => MapEntry<String, Parameter>(k, Parameter.fromJson(v))),
//         times: Times.fromJson(json["times"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "type": type,
//         "geometry": geometry.toJson(),
//         "properties": properties.toJson(),
//         "header": header.toJson(),
//         "messages": List<dynamic>.from(messages.map((x) => x)),
//         "parameters": Map.from(parameters).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//         "times": times.toJson(),
//     };
// }

// class Geometry {
//     Geometry({
//         this.type,
//         this.coordinates,
//     });

//     String type;
//     List<double> coordinates;

//     factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
//         type: json["type"],
//         coordinates: List<double>.from(json["coordinates"].map((x) => x.toDouble())),
//     );

//     Map<String, dynamic> toJson() => {
//         "type": type,
//         "coordinates": List<dynamic>.from(coordinates.map((x) => x)),
//     };
// }

// class Header {
//     Header({
//         this.title,
//         this.api,
//         this.fillValue,
//         this.start,
//         this.end,
//     });

//     String title;
//     Api api;
//     int fillValue;
//     String start;
//     String end;

//     factory Header.fromJson(Map<String, dynamic> json) => Header(
//         title: json["title"],
//         api: Api.fromJson(json["api"]),
//         fillValue: json["fill_value"],
//         start: json["start"],
//         end: json["end"],
//     );

//     Map<String, dynamic> toJson() => {
//         "title": title,
//         "api": api.toJson(),
//         "fill_value": fillValue,
//         "start": start,
//         "end": end,
//     };
// }

// class Api {
//     Api({
//         this.version,
//         this.name,
//     });

//     String version;
//     String name;

//     factory Api.fromJson(Map<String, dynamic> json) => Api(
//         version: json["version"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "version": version,
//         "name": name,
//     };
// }

// class Parameter {
//     Parameter({
//         this.units,
//         this.longname,
//     });

//     String units;
//     String longname;

//     factory Parameter.fromJson(Map<String, dynamic> json) => Parameter(
//         units: json["units"],
//         longname: json["longname"],
//     );

//     Map<String, dynamic> toJson() => {
//         "units": units,
//         "longname": longname,
//     };
// }

// class Properties {
//     Properties({
//         this.parameter,
//     });

//     Map<String, Map<String, double>> parameter;

//     factory Properties.fromJson(Map<String, dynamic> json) => Properties(
//         parameter: Map.from(json["parameter"]).map((k, v) => MapEntry<String, Map<String, double>>(k, Map.from(v).map((k, v) => MapEntry<String, double>(k, v.toDouble())))),
//     );

//     Map<String, dynamic> toJson() => {
//         "parameter": Map.from(parameter).map((k, v) => MapEntry<String, dynamic>(k, Map.from(v).map((k, v) => MapEntry<String, dynamic>(k, v)))),
//     };
// }

// class Times {
//     Times({
//         this.data,
//         this.process,
//     });

//     double data;
//     double process;

//     factory Times.fromJson(Map<String, dynamic> json) => Times(
//         data: json["data"].toDouble(),
//         process: json["process"].toDouble(),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": data,
//         "process": process,
//     };
// }
