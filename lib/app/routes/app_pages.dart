import 'package:get/get.dart';

import '../modules/add_branch/bindings/add_branch_binding.dart';
import '../modules/add_branch/views/add_branch_view.dart';
import '../modules/branch/bindings/branch_binding.dart';
import '../modules/branch/views/branch_view.dart';
import '../modules/detail_branch/bindings/detail_branch_binding.dart';
import '../modules/detail_branch/views/detail_branch_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.branch,
      page: () => BranchView(),
      binding: BranchBinding(),
    ),
    GetPage(
      name: _Paths.ADD_BRANCH,
      page: () => const AddBranchView(),
      binding: AddBranchBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BRANCH,
      page: () => const DetailBranchView(),
      binding: DetailBranchBinding(),
    ),
  ];
}
