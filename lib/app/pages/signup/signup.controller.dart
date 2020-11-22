import 'package:jukebox_flutter/app/models/user.model.dart';
import "package:mobx/mobx.dart";
part 'signup.controller.g.dart';

class SignUpController = SignUpControllerBase with _$SignUpController;

abstract class SignUpControllerBase with Store {
  @observable
  UserModel user;
  @observable
  String passwordConfirm;

  SignUpControllerBase() {
    this.user = new UserModel();
  }

  @action
  signUp() {
    print(user.toRawJson());
  }
}
