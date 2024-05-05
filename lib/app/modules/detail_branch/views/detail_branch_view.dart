import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_branch_controller.dart';

class DetailBranchView extends GetView<DetailBranchController> {
  const DetailBranchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailBranchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailBranchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
