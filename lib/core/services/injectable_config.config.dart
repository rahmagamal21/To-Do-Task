// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:to_do_task/core/services/app_module.dart' as _i641;
import 'package:to_do_task/core/services/shared_prefrence_service.dart'
    as _i968;
import 'package:to_do_task/Features/To%20Do/Data/repository/task_repository_impl.dart'
    as _i154;
import 'package:to_do_task/Features/To%20Do/Data/service/api_service.dart'
    as _i1028;
import 'package:to_do_task/Features/To%20Do/Domain/use_cases.dart' as _i230;
import 'package:to_do_task/Features/To%20Do/Presentation/Controller/task/task_bloc.dart'
    as _i810;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i968.SharedPreferencesService>(
        () => _i968.SharedPreferencesService());
    gh.factory<_i230.GetTasksUseCase>(() => _i230.GetTasksUseCase());
    gh.factory<_i230.AddTaskUseCase>(() => _i230.AddTaskUseCase());
    gh.factory<_i230.UpdateTaskUseCase>(() => _i230.UpdateTaskUseCase());
    gh.factory<_i230.DeleteTaskUseCase>(() => _i230.DeleteTaskUseCase());
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i1028.ApiService>(() => registerModule.apiService);
    gh.singleton<_i154.TaskRepositoryImpl>(
        () => registerModule.taskRepositoryImpl);
    gh.factory<_i810.TaskBloc>(() => _i810.TaskBloc(
          gh<_i230.GetTasksUseCase>(),
          gh<_i230.AddTaskUseCase>(),
          gh<_i230.UpdateTaskUseCase>(),
          gh<_i230.DeleteTaskUseCase>(),
          gh<_i968.SharedPreferencesService>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i641.RegisterModule {}
