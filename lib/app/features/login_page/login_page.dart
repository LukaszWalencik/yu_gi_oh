import 'package:flutter/material.dart';
import 'package:yu_gi_oh/app/constants/colors/colors.dart';
import 'package:yu_gi_oh/app/constants/dimens/dimens.dart';
import 'package:yu_gi_oh/app/constants/radius/radius.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yu-Gi-Oh!',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.xl),
                  ),
                  borderSide: BorderSide(color: AppColors.purple),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppRadius.xl),
                  ),
                  borderSide: BorderSide(color: AppColors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppRadius.xl),
                  ),
                ),
                filled: true,
                fillColor: AppColors.grey,
                labelText: 'Username',
                labelStyle: TextStyle(color: AppColors.black),
                helperText: 'Username with min 3 letters',
                prefixIcon: Icon(
                  Icons.person,
                  color: AppColors.purple,
                ),
              ),
            ),
            const SizedBox(height: Dimens.xl),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.xl),
                  ),
                  borderSide: BorderSide(color: AppColors.purple),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppRadius.xl),
                  ),
                  borderSide: BorderSide(color: AppColors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(AppRadius.xl),
                  ),
                ),
                fillColor: AppColors.grey,
                prefixIcon: Icon(
                  Icons.key,
                  color: AppColors.purple,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(color: AppColors.black),
                helperText: 'Password with min 3 letters',
              ),
            ),
            const SizedBox(height: Dimens.xl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(primary: AppColors.purple),
                  onPressed: () {},
                  child: const Text('Clear'),
                ),
                ElevatedButton(
                    style:
                        TextButton.styleFrom(backgroundColor: AppColors.purple),
                    onPressed: () {},
                    child: const Text('Log In'))
              ],
            ),
            const SizedBox(height: Dimens.xl),
            TextButton(
              style: TextButton.styleFrom(primary: AppColors.purple),
              onPressed: () {},
              child: const Text('Registration'),
            ),
          ],
        ),
      ),
    );
  }
}
