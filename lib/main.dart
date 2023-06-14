import 'package:flutter/material.dart';
import 'package:mqtt_flutter/screens/mqtt_screen.dart';
import 'package:mqtt_flutter/state/mqtt_app_state.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MQTT',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xffe5e6e9),
      ),
      home: ChangeNotifierProvider<MQTTAppState>(
        create: (_) => MQTTAppState(),
        child: const MQTTScreen(),
      ),
    );
  }
}
