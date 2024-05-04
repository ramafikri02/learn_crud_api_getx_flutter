import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learc_getx_crud/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (homeController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: homeController.branchs.length,
            itemBuilder: (context, index) {
              var branch = homeController.branchs[index];
              return ListTile(
                title: Text(branch.branchCode),
                subtitle: Text(branch.branchName),
                // You can add more details here
              );
            },
          );
        }
      }),
      // ListView.builder(
      //   padding: const EdgeInsets.all(20),
      //   itemCount: products.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       elevation: 5,
      //       margin: const EdgeInsets.only(bottom: 20),
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(9),
      //       ),
      //       child: InkWell(
      //         onTap: () {},
      //         borderRadius: BorderRadius.circular(9),
      //         child: Container(
      //           height: 100,
      //           padding: const EdgeInsets.all(20),
      //           child: Row(
      //             children: [
      //               Expanded(
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       products[index].name,
      //                       style: const TextStyle(fontWeight: FontWeight.bold),
      //                     ),
      //                     Text(products[index].description)
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
