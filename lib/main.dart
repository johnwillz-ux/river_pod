import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_pod/fetch_user_online.dart';
import 'package:river_pod/home_screen.dart';
import 'package:river_pod/home_screen_two.dart';
import 'package:river_pod/user_model.dart';

//Providers
//Provider
//SateProvider
//StateNotifier and StateNotifierProvider
//ChangeNotifierProvider
//FutureProvider
//StreamProvider

final fetchUserProvider = FutureProvider((ref) async {
  final userRepo = ref.watch(userRepoProvider);
  return userRepo.getUserDataOnline();
});

final nameProvider = Provider<String>((ref) => "Johnwillz");

//This is use to get input, Like data from database
final newNameProvider = StateProvider<String?>((ref) => null);

final newNameStateProvider =
    StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Settings(),
      // home: const HomeScreenTwo(),
      home: const HomeScreen(),
    );
  }
}
