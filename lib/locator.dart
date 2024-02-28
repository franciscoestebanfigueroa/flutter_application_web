import 'package:flutter_application_web/nevigator_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() =>
      NavigationService()); //creo una instancia como un singlenton de navigationservice
}
