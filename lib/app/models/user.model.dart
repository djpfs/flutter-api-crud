import 'dart:convert';

class UserModel {
  UserModel({
    this.name,
    this.birthday,
    this.email,
    this.password,
    this.id,
  });

  String name;
  String birthday;
  String email;
  String password;
  String id;

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"] == null ? null : json["name"],
        birthday: json["birthday"] == null ? null : json["birthday"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        id: json["_id"] == null ? null : json["_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "birthday": birthday == null ? null : birthday,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "_id": id == null ? null : id,
      };
}
