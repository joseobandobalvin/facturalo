import 'package:facturalo/models/user.dart';
import 'package:facturalo/providers/remote/account_provider.dart';
import 'package:facturalo/repo/account_repo.dart';

class AccountRepoImp implements AccountRepo {
  final AccountProvider _provider = AccountProvider();

  //AccountRepoImp(this._provider);

  @override
  Future<User?> get userInformation => _provider.userInformation;
}
