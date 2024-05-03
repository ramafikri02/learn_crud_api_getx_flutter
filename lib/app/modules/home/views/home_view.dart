import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  final List<Product> products = [
    Product(name: 'Product 1', description: 'Description 1', price: 10.0),
    Product(name: 'Product 2', description: 'Description 2', price: 20.0),
    Product(name: 'Product 3', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    Product(name: 'Product 4', description: 'Description 3', price: 30.0),
    // Tambahkan data produk lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: products.length,
        itemBuilder: (context, index) {
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
                height: 100,
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(products[index].description)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
