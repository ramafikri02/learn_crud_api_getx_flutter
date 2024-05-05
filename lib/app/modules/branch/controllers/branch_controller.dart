import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:learc_getx_crud/app/data/models/branch_model.dart';
import 'package:http/http.dart' as http;

class BranchController extends GetxController {
  var branchs = <BranchModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getBranchs();
  }

  Future<void> getBranchs() async {
    try {
      isLoading(true);
      var response = await http.get(Uri.parse(
          'https://774c-27-124-95-204.ngrok-free.app/api/datamaster/get/branch'));
      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        List<BranchModel> branchsList = [];
        for (var item in jsonData['data']) {
          branchsList.add(BranchModel.fromJson(item));
          if (kDebugMode) {
            print(item);
          }
        }
        branchs.value = branchsList;
      } else {
        print('Failed to load services');
      }
    } finally {
      isLoading(false);
    }
  }
}
