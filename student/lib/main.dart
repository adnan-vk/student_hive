import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student/db/model/data_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/home.dart';

Future <void> main()async{
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(studentModelAdapter().typeId)){
    Hive.registerAdapter(studentModelAdapter());
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}