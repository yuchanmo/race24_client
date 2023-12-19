import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:race24_client/login/login_viewmodel.dart';
import 'package:race24_client/routes/app_routes.dart';

class LoginDeskTopScreen extends StatelessWidget {
  LoginDeskTopScreen({super.key});

  final LoginViewModel _loginViewModel = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 100,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: '아이디',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: '비밀번호',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    // 로그인 버튼 동작 추가
                    print("press login button");
                    //await _loginViewModel.signInWithGoogle();
                  },
                  child: const Text('로그인'),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    // 구글 로그인 버튼 동작 추가
                  },
                  child: const Text('구글 로그인'),
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    Get.offAllNamed(AppPages.HOME);
                  },
                  child: const Text('카카오톡 로그인'),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // 회원가입 버튼 동작 추가
                  },
                  child: const Text('회원가입'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
