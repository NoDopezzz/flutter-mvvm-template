import 'dart:collection';

import 'package:get_it/get_it.dart';
import 'package:my_app/app/di/locator_provider.dart';

///[LocatorManager] is used to manage scopes of DI
class LocatorManager {

  ///[currentScopeName] public field. Can be useful when we need to get current scope.
  ///Example: different behavior of push notifications for different scopes
  static String get currentScopeName => scopeNameQueue.last;

  ///[scopeNameQueue] is queue of opened scope names
  static final scopeNameQueue = Queue<String>();

  ///[locator] is used to inject object. Example: LocatorManager.locator<CommonDialogManager>
  static final locator = GetIt.instance;

  static void setupAppScope() => LocatorProvider.registerAppScope(locator);

  static const appScopeName = "AppScope";

  static void openAppScope() {
    locator.pushNewScope(scopeName: appScopeName);
    scopeNameQueue.add(appScopeName);
    setupAppScope();
  }
}
