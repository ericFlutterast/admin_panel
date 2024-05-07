import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Admin panel',
      debugShowCheckedModeBanner: false,
      home: AppRoot(),
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  Color? _color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: _color,
          child: const Center(
            child: Text(
              'Admin Panel',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () => setState(
          () => _color == null ? _color = Colors.lightBlueAccent : null,
        ),
        child: const Text('set background color'),
      ),
    );
  }
}
