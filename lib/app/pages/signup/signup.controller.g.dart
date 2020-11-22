// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on SignUpControllerBase, Store {
  final _$userAtom = Atom(name: 'SignUpControllerBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$SignUpControllerBaseActionController =
      ActionController(name: 'SignUpControllerBase');

  @override
  dynamic signUp() {
    final _$actionInfo = _$SignUpControllerBaseActionController.startAction(
        name: 'SignUpControllerBase.signUp');
    try {
      return super.signUp();
    } finally {
      _$SignUpControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
