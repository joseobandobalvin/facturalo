import 'package:facturalo/models/user.dart';
import 'package:facturalo/repo/account_repo.dart';
import 'package:facturalo/repo/auth_repo.dart';
import 'package:facturalo/repo_imp/account_repo_imp.dart';
import 'package:facturalo/repo_imp/auth_repo_imp.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AuthController extends GetxController {
  String _email = "", _password = "";

  final AuthRepoImp _authRepoImp = AuthRepoImp();
  //final AccountRepoImp _accountRepoImp = AccountRepoImp();

  @override
  void onReady() {
    super.onReady();
  }

  void onEmailChanged(String t) {
    _email = t;
  }

  void onPasswordChanged(String t) {
    _password = t;
  }

  Future<bool> submit() async {
    String? token =
        await _authRepoImp.signInWithEmailAndPassword(_email, _password);

    //AuthRepo wes = AuthRepoImp().signInWithEmailAndPassword(_email, _password);
    if (token != null) {
      await _authRepoImp.saveToken(token);
      return true;
    }
    return false;
  }

  void signOut() {
    print("saliendo");
    try {
      print("Saliendo del try ");
      navigateToLoginPage();
    } catch (e) {
      print(e);
    }
  }

  signIn() {
    navigateToLoginPage();
  }

  void navigateToLoginPage() {
    Get.offAllNamed("/login");
  }

  void navigateToHomePage() {
    Get.offAllNamed("/");
  }
}
