import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

///[LocatorProvider] providing objects for each scopes
class LocatorProvider {

  static void registerAppScope(GetIt get) {
    final gh = GetItHelper(get);
    ///example: gh.lazySingleton<CommonDialogManager>(() => CommonDialogManager());
  }

}
