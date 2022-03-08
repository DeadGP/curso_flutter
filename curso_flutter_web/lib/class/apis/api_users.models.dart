import 'dart:convert';

LoginUsers loginUsers(String str) => LoginUsers.fromJson(json.decode(str));
RegisterUsers registerUsers(String str) =>
    RegisterUsers.fromJson(json.decode(str));

class LoginUsers {
  dynamic ok, user, access_token, code, message, error, branch;

  LoginUsers(
      {this.ok,
      this.user,
      this.access_token,
      this.code,
      this.message,
      this.error,
      this.branch});

  factory LoginUsers.fromJson(Map<String, dynamic> json) => LoginUsers(
      ok: json['ok'],
      user: json['user'],
      access_token: json['access_token'],
      code: json['code'],
      message: json['message'],
      error: json['error'],
      branch: json['branch']);

  Map<String, dynamic> toJson() => {
        'ok': ok,
        'user': user,
        'access_token': access_token,
        'code': code,
        'message': message,
        'error': error,
        'branch': branch
      };
}

class RegisterUsers {
  dynamic name, lastname, email, password;

  RegisterUsers({this.name, this.lastname, this.email, this.password});

  factory RegisterUsers.fromJson(Map<String, dynamic> json) => RegisterUsers(
      name: json['name'],
      lastname: json['lastname'],
      email: json['email'],
      password: json['password']);

  Map<String, dynamic> toJson() => {
        'name': name,
        'lastname': lastname,
        'email': email,
        'password': password
      };
}
