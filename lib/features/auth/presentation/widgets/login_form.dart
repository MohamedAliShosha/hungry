import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/widgets/custom_button.dart';
import 'package:hungry_app/core/widgets/custom_text.dart';
import 'package:hungry_app/core/widgets/custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            controller: widget.emailController,
            hintText: 'Email Address',
          ),
          const Gap(20),
          CustomTextFormField(
            controller: widget.passwordController,
            hintText: 'Password',
            suffixIcon: const Icon(
              Icons.remove_red_eye,
            ),
            isPassword: true,
          ),
          const Gap(30),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                // Perform login action
                log('Login successful');
              }
            },
            child: const CustomButton(
              title: 'Login',
            ),
          )
        ],
      ),
    );
  }
}
