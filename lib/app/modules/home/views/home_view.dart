import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learc_getx_crud/app/modules/home/controllers/home_controller.dart';
import 'package:learc_getx_crud/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selamat datang di Aplikasi Flutter',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.branch);
              },
              child: const Text('Branch list'),
            ),
          ],
        ),
      ),
    );
  }
}
