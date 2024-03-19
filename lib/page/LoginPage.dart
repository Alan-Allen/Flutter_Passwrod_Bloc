import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/bloc.dart';
import '../component/Button.dart';
import '../routes/router.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            print('Back to Home');
            router.go('/');
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        controller: _userController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person_outline),
                          hintText: 'Enter your user',
                          label: const Text('User'),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 400,
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: 'Enter your password',
                          label: const Text('Password'),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 3),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: CustomButton(
                      onPressed: () {
                        print('Login button pressed');
                      },
                      text: 'Login',
                      Colors: Colors.blue,
                      textColors: Colors.white,
                      width: 30,
                      height: 15,
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
