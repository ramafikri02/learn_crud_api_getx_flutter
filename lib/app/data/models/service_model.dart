import 'dart:convert';

class ServiceModel {
  final String serviceCode;
  final String serviceName;
  final String description;
  final String createdBy;
  final String createdAt;
  final String updatedAt;
  final dynamic deletedAt;

  ServiceModel({
    required this.serviceCode,
    required this.serviceName,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory ServiceModel.fromRawJson(String str) =>
      ServiceModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        serviceCode: json["service_code"],
        serviceName: json["service_name"],
        description: json["description"],
        createdBy: json["createdBy"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "service_code": serviceCode,
        "service_name": serviceName,
        "description": description,
        "createdBy": createdBy,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "deletedAt": deletedAt,
      };
}
