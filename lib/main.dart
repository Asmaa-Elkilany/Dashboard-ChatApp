import 'package:dashboard/core/cubit/parent_cubit.dart';
import 'package:dashboard/core/routing/my_route.dart';
import 'package:dashboard/core/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ParentCubit.instance,
      child: BlocBuilder<ParentCubit, ParentState>(
        builder: (context, state) {
          final themeMode =context.read<ParentCubit>().themeMode;
          ThemeData themeData;

          if(themeMode == ThemeMode.dark){
            themeData = MyTheme.instance.dark;
          } else{
            themeData = MyTheme.instance.light;
          }

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // home: DashboardPage(),
            onGenerateInitialRoutes: (_) => MyRoute.initialRoutes,
            onGenerateRoute: MyRoute.onNavigateByName,
            theme: themeData,
          );
        },
      ),
    );
  }
}

