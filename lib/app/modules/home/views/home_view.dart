import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../app_pkg.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child:   const Scaffold(
        body: Center(child: Text("Home View Is Working")),
      )
    );
  }
}