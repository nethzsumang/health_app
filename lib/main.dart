import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:health_app/domains/blood_pressure/pages/blood_pressure_page.dart';
import 'package:health_app/domains/counter/pages/counter_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:go_router/go_router.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
      url: dotenv.get('SUPABASE_URL'),
      anonKey: dotenv.get('SUPABASE_KEY')
  );
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

