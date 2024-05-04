import 'dart:convert';

class BranchModel {
  final String branchCode;
  final String branchName;
  final String createdBy;
  final dynamic createdAt;
  final dynamic updatedAt;
  final dynamic deletedAt;

  BranchModel({
    required this.branchCode,
    required this.branchName,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory BranchModel.fromRawJson(String str) =>
      BranchModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BranchModel.fromJson(Map<String, dynamic> json) => BranchModel(
        branchCode: json["branch_code"],
        branchName: json["branch_name"],
        createdBy: json["createdBy"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "branch_code": branchCode,
        "branch_name": branchName,
        "createdBy": createdBy,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "deletedAt": deletedAt,
      };
}
