import 'package:facturalo/models/user.dart';
import 'package:facturalo/providers/local/auth_client.dart';

class AccountProvider {
  final AuthClient _authClient = AuthClient();
  //AccountProvider(this._authClient);

  Future<User?> get userInformation async {
    final token = _authClient.token;

    // ignore: unnecessary_null_comparison
    if (token == null) {
      throw Exception('token is null');
    }

    //await Future.delayed(Duration(seconds: 1));
    return User(
      email: "test@test.com",
      name: "Jose obando balvin",
      ruc: "12132313413",
    );
  }
}
