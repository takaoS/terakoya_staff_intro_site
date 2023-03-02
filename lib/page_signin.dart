import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var email = 'info@cafe-de-terakoya.or.jp';
  var password = '';
  var resultMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'パスワード'),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              Text(resultMessage),
              Container(
                child: OutlinedButton(
                  child: Text('ログイン'),
                  onPressed: ((() {})),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
