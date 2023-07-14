import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.watch(newNameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(newNameProvider) ?? "No Data";

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  onSubmitted: (value) => onSubmit(ref, value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
