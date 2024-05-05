import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learc_getx_crud/app/data/models/branch_model.dart';

import '../controllers/detail_branch_controller.dart';

class DetailBranchView extends GetView<DetailBranchController> {
  DetailBranchView({super.key});

  final BranchModel branch = Get.arguments;

  final TextEditingController branchCodeC = TextEditingController();
  final TextEditingController branchNameC = TextEditingController();
  final TextEditingController createdByC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    branchCodeC.text = branch.branchCode;
    branchNameC.text = branch.branchName;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailBranchView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            autocorrect: false,
            controller: branchCodeC,
            keyboardType: TextInputType.number,
            readOnly: true,
            decoration: InputDecoration(
                labelText: "Branch Code",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
          ),
          const SizedBox(height: 20),
          TextField(
            autocorrect: false,
            controller: branchNameC,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Branch Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              if (controller.isLoadingUpdate.isFalse) {
                if (branchCodeC.text.isNotEmpty &&
                    branchNameC.text.isNotEmpty) {
                  controller.isLoadingUpdate(true);
                  Map<String, dynamic> hasil =
                      await controller.editBranch(branchCodeC.text, {
                    "branch_name": branchNameC.text,
                  });
                  controller.isLoadingUpdate(false);

                  Get.back();

                  Get.snackbar(
                    hasil["error"] == true ? "Error" : "Success",
                    hasil["message"],
                    duration: const Duration(seconds: 2),
                  );
                } else {
                  Get.snackbar(
                    "Error",
                    "Semua data harus diisi.",
                    duration: const Duration(seconds: 2),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 20)),
            child: Obx(
              () => Text(controller.isLoadingUpdate.isFalse
                  ? "Update Branch"
                  : "Loading"),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "Delete Branch",
                  middleText: "Are you sure you want to delete this product ?",
                  actions: [
                    OutlinedButton(
                      onPressed: () => {Get.back()},
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () async {},
                      child: const Text("Delete"),
                    )
                  ]);
            },
            child: const Text(
              "Delete product",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
