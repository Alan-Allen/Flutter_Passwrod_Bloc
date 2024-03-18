import 'package:flutter/material.dart';
import 'package:flutter_password2/component/Button.dart';
import 'package:flutter_password2/component/common_drawer.dart';

import '../routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: CommonDrawer.getDrawer(context),
      body: Center(
        child: Column(
          children: [
            CustomButton(
                onPressed: () {
                  print('Login Button Pressed');
                  router.go('/login');
                },
                text: 'Login',
                Colors: Colors.blue,
                textColors: Colors.white,
                width: 30, height: 20
            ),
          ],
        ),
      ),
    );
  }
}