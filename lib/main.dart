import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  final updater = ShorebirdUpdater();
  final status = await updater.checkForUpdate();
  print('🔍 Update status: $status'); 

  final patch = await ShorebirdUpdater().readCurrentPatch();
  print('📦 Patch number: ${patch?.number}}');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

   @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Simple Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: Center(
       child: Text("Hello World patch newwneeeee"),
      )
    );
  }
}
