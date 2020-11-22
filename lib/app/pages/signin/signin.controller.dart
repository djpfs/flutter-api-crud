import 'package:jukebox_flutter/app/models/user.model.dart';
import "package:mobx/mobx.dart";
part "signin.controller.g.dart";

class SignInController = SignInControllerBase with _$SignInController;

abstract class SignInControllerBase with Store {
  @observable
  UserModel user;

  SignInControllerBase() {
    this.user = new UserModel();
  }

  @action
  signIn() {
    print(this.user.toRawJson());
  }
}
