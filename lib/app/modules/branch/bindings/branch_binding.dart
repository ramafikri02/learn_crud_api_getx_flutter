import 'package:get/get.dart';

import '../controllers/branch_controller.dart';

class BranchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BranchController>(
      () => BranchController(),
    );
  }
}
