import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learc_getx_crud/app/modules/home/controllers/home_controller.dart';

import '../controllers/branch_controller.dart';

class BranchView extends GetView<BranchController> {
  BranchView({super.key});

  final BranchController branchController = Get.put(BranchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BranchView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (branchController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: branchController.branchs.length,
            itemBuilder: (context, index) {
              var branch = branchController.branchs[index];
              return Card(
                elevation: 5,
                margin: const EdgeInsets.only(bottom: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(9),
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                branch.branchCode,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(branch.branchName)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
