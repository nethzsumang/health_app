import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:health_app/domains/blood_pressure/pages/blood_pressure_page.dart';
import 'package:health_app/domains/bmi/pages/bmi_page.dart';
import 'package:health_app/domains/counter/pages/counter_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const CounterPage(title: 'Home')
          ),
          GoRoute(
            path: '/blood-pressure',
            builder: (context, state) => const BloodPressurePage(title: 'Blood Pressure')
          ),
          GoRoute(
            path: '/bmi',
            builder: (context, state) => const BmiPage(title: 'BMI')
          )
        ]
    );
    return MaterialApp.router(
      title: 'Health App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      routerConfig: router,
    );
  }
}

