import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final name = ref.watch(newNameProvider) ?? "No data";

        return Container(
          color: Colors.yellow,
          child: Center(
            child: Text(
              name,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        );
      }),
    );
  }
}
