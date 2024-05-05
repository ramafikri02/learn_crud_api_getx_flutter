import 'package:get/get.dart';

import '../controllers/detail_branch_controller.dart';

class DetailBranchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailBranchController>(
      () => DetailBranchController(),
    );
  }
}
