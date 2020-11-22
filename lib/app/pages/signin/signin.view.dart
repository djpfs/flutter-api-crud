import 'package:flutter/material.dart';
import 'package:jukebox_flutter/app/pages/signin/signin.controller.dart';
import 'package:jukebox_flutter/app/widgets/Button.dart';
import 'package:jukebox_flutter/app/widgets/CommonFormField.dart';
import 'package:jukebox_flutter/routes.dart';

class SignInView extends StatelessWidget {
  final SignInController _signInController = new SignInController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: CommonFormField(
              onChanged: (String val) => _signInController.user.email = val,
              label: 'Email',
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
              child: CommonFormField(
                onChanged: (String val) =>
                    _signInController.user.password = val,
                label: 'Senha',
                obscureText: true,
              )),
          SizedBox(
            height: 10,
          ),
          Button(function: _signInController.signIn, text: 'Fazer login'),
          SizedBox(
            height: 10,
          ),
          Text(
            'ou',
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: 10,
          ),
          Button(
            function: () => Navigator.pushNamed(context, SignOutViewRoute),
            text: 'Se cadastrar',
            color: Colors.green,
          )
        ],
      )),
      backgroundColor: Colors.white,
    );
  }
}
