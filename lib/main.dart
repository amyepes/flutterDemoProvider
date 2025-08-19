import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

import 'ui/pages/home.dart';
import 'providers/color_provider.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  runApp(ChangeNotifierProvider(
      create: (context) => CoolorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Basic state manager sample"),
          ),
          body: const SafeArea(
            child: HomePage(),
          ),
        ),
      )));
}
