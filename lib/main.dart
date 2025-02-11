import 'package:flutter/material.dart';
import 'package:playtify/logic/recently_played.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecentlyPlayedLogic>(
      create: (_) => RecentlyPlayedLogic(),
      child: MaterialApp(
        title: 'Playtify',
        theme: ThemeData(useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
