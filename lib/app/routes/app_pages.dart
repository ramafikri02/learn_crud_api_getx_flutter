import 'package:get/get.dart';

import '../modules/branch/bindings/branch_binding.dart';
import '../modules/branch/views/branch_view.dart';
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
  ];
}
