import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable_config.config.dart';

final getIt = GetIt.instance;

@injectableInit
GetIt configureDependencies() => getIt.init();
