import 'package:flutter/material.dart';
import 'package:jukebox_flutter/app/pages/signup/signup.controller.dart';
import 'package:jukebox_flutter/app/widgets/Button.dart';
import 'package:jukebox_flutter/app/widgets/CommonFormField.dart';
import 'package:jukebox_flutter/routes.dart';

class SignUpView extends StatelessWidget {
  final SignUpController _signUpController = new SignUpController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: ListView(padding: EdgeInsets.all(20), children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: CommonFormField(
              label: 'Nome',
              onChanged: (String val) => _signUpController.user.name = val,
              keyboardType: TextInputType.name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: CommonFormField(
              onChanged: (String val) => _signUpController.user.birthday = val,
              label: 'Data de Nascimento',
              keyboardType: TextInputType.datetime,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: CommonFormField(
              onChanged: (String val) => _signUpController.user.email = val,
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: CommonFormField(
              onChanged: (String val) => _signUpController.user.password = val,
              label: 'Senha',
              obscureText: true,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 20.0, left: 8, right: 8),
            child: CommonFormField(
              onChanged: (String val) =>
                  _signUpController.passwordConfirm = val,
              obscureText: true,
              label: 'Repita a senha',
            ),
          ),
          Button(function: _signUpController.signUp, text: 'Fazer cadastro'),
          SizedBox(
            height: 10,
          ),
          Text(
            'ou',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black54),
          ),
          SizedBox(
            height: 10,
          ),
          Button(
            function: () => Navigator.pushNamed(context, SignInViewRoute),
            text: 'Fazer login',
            color: Colors.green,
          )
        ])));
  }
}
