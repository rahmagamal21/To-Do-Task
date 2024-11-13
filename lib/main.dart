import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_task/Features/To%20Do/Presentation/Controller/task/task_bloc.dart';

import 'Features/To Do/Presentation/Views/home_screen.dart';
import 'core/services/injectable_config.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return BlocProvider(
            create: (context) => getIt<TaskBloc>()..add(const FetchTasks()),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              darkTheme: ThemeData.dark(),
              themeMode: ThemeMode.dark,
              home: const HomeScreen(),
            ),
          );
        });
  }
}
