import 'package:facturalo/models/user.dart';

abstract class AccountRepo {
  Future<User?> get userInformation;
}
