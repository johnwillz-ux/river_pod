import 'package:http/http.dart' as http;
import 'package:river_pod/user_model.dart';

class UserRepo {
  Future<User> getUserDataOnline() {
    const url = "https://jsonplaceholder.typicode.com/users/1";

    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  }
}
