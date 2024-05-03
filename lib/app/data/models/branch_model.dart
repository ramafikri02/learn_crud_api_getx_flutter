class ProductModel {
  final String branchCode;
  final String branchName;
  final String createdBy;

  ProductModel({
    required this.branchCode,
    required this.branchName,
    required this.createdBy,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        branchCode: json["branchCode"] ?? "",
        branchName: json["branchName"] ?? "",
        createdBy: json["createdBy"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "branchCode": branchCode,
        "branchName": branchName,
        "createdBy": createdBy,
      };
}
