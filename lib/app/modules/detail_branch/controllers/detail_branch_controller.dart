import 'dart:convert';

import 'package:get/get.dart';
import 'package:learc_getx_crud/app/data/models/branch_model.dart';
import 'package:http/http.dart' as http;

class DetailBranchController extends GetxController {
  RxBool isLoadingUpdate = false.obs;
  RxBool isLoadingDelete = false.obs;

  //! Edit data
  Future<Map<String, dynamic>> editBranch(
      String branchCode, Map<String, dynamic> data) async {
    // Panggil API atau operasi database untuk menyimpan perubahan
    var response = await http.patch(
      Uri.parse(
          'https://774c-27-124-95-204.ngrok-free.app/api/datamaster/update/branch/$branchCode'),
      body: json.encode({
        'branch_name': data['branch_name'],
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200) {
      print('Failed to edit service name: ${response.statusCode}');
      return {'success': false, 'message': 'Failed to edit service name'};
    } else {
      return {'success': true, 'message': 'Service name edited successfully'};
    }
  }

  //! Delete data
  // Future<void> deleteBranch(BranchModel branch) async {
  //   // Panggil API atau operasi database untuk menghapus data
  //   var response = await http.delete(
  //     Uri.parse(
  //         'https://774c-27-124-95-204.ngrok-free.app/api/datamaster/delete/branch'),
  //   );

  //   if (response.statusCode != 200) {
  //     // Penanganan kesalahan jika ada
  //     print('Failed to delete branch: ${response.statusCode}');
  //   }
  // }
}
