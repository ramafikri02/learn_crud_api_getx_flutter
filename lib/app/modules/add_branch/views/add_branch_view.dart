import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_branch_controller.dart';

class AddBranchView extends GetView<AddBranchController> {
  const AddBranchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBranchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddBranchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
