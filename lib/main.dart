import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_password2/routes/router.dart';

import 'Bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
      builder: (context, router) {
        return BlocProvider(
          create: (context) => LoginBloc(),
          child: router!,
        );
      },
    );
  }
}