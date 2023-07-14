import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/main.dart';

class HomeScreenTwo extends ConsumerWidget {
  const HomeScreenTwo({super.key});

  // void onSubmit(WidgetRef ref, String value) {
  //   ref.watch(newNameProvider.notifier).update((state) => value);
  // }

  void onSubmit(WidgetRef ref, String value) {
    ref.read(newNameStateProvider.notifier).updateName(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(newNameProvider) ?? "No Data";

    final user = ref.watch(newNameStateProvider);

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        user.name,
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        user.email.toString(),
                        style: const TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onSubmitted: (value) => onSubmit(ref, value),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
