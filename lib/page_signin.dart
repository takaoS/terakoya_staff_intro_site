import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:terakoya_staff_intro_site/page_staff_sort.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String email = 'info@cafe-de-terakoya.or.jp';
  var password = '';
  String resultMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 150),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'パスワードを入力…'),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: OutlinedButton(
                  child: const Text('ログイン'),
                  onPressed: ((() async {
                    try {
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      await auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return StaffListPage();
                      }));
                    } catch (e) {
                      setState(() {
                        resultMessage = 'ログインに失敗しました。パスワードが正しいか確認してください。';
                      });
                    }
                  })),
                ),
              ),
              const SizedBox(height: 20),
              Text(resultMessage),
            ],
          ),
        ),
      ),
    );
  }
}
