import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page11 extends StatelessWidget {
  const Page11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page".tr + " 11")),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pages, size: 60),
            SizedBox(height: 10),
            Text("This is Page 11", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
