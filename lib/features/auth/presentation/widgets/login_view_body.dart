import 'package:flutter/material.dart';

import 'package:hungry_app/features/auth/presentation/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: LoginForm(
          emailController: emailController,
          passwordController: passwordController,
        ),
      ),
    );
  }
}
