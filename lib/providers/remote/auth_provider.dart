import 'dart:convert';

import 'package:facturalo/models/user.dart';
import 'package:facturalo/providers/local/auth_client.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthProvider {
  AuthClient _authClient = AuthClient();

  Future<String?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var url = Uri.https('full.facturalo.pro', 'api/login');
      var response =
          await http.post(url, body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());

        //print(data['token']);
        if (data['success']) {
          _authClient.saveUserInformacion(data);

          return data['token'];
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
    // if (email == "test@test.com" && password == "test") {
    //   final String token = DateTime.now().millisecondsSinceEpoch.toString();
    //   return token;
    // }
    //return null;
    //demo@gmail.com    123456
  }
}
