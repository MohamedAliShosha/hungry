import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry_app/core/widgets/custom_text.dart';
import 'package:hungry_app/features/auth/presentation/widgets/custom_auth_button.dart';
import 'package:hungry_app/core/widgets/custom_text_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(100),
            SvgPicture.asset(
              'assets/images/Hungry_.svg',
            ),
            const Gap(10),
            const CustomText(
              text: 'Welcome to HUNGRY. The Best Fast Food',
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
            const Gap(70),
            CustomTextFormField(
              hintText: 'Name',
              controller: _nameController,
            ),
            const Gap(20),
            CustomTextFormField(
              hintText: 'Email Address',
              controller: _emailController,
            ),
            const Gap(20),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Password',
              controller: _passwordController,
            ),
            const Gap(20),
            CustomTextFormField(
              isPassword: true,
              hintText: 'Confirm Password',
              controller: _confirmPasswordController,
            ),
            const Gap(30),
            CustomAuthButton(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  // Perform login action
                  log('Sign Up successful');
                }
              },
              title: 'Sign Up',
            )
          ],
        ),
      ),
    );
  }
}
