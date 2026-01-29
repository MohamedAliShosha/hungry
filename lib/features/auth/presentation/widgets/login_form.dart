import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:hungry_app/core/widgets/custom_text.dart';
import 'package:hungry_app/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        _emailController = emailController;

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  void dispose() {
    widget.emailController.dispose();
    widget.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Gap(100),
          SvgPicture.asset('assets/images/Hungry_.svg'),
          const Gap(10),
          const CustomText(
            text: 'Welcome Back Discover The Best Fast Food',
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          const Gap(70),
          CustomTextFormField(
            controller: widget._emailController,
            hintText: 'Email Address',
          ),
          const Gap(20),
          CustomTextFormField(
            controller: widget._passwordController,
            hintText: 'Password',
            suffixIcon: const Icon(
              Icons.remove_red_eye,
            ),
            isPassword: true,
          ),
          const Gap(30),
          CustomAuthButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                // Perform login action
                log('Login successful');
              }
            },
            title: 'Login',
          )
        ],
      ),
    );
  }
}
