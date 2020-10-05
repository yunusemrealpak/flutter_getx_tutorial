import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/ui/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.increaseNumber(),
            backgroundColor: Colors.deepOrange,
            child: Icon(
              Icons.add,
            ),
          ),
          body: Container(
            child: Center(child: Text("${controller.value}")),
          ),
        );
      },
    );
  }
}
