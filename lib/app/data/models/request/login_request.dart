import 'dart:convert';

class LoginRequest {
  LoginRequest({
    required this.email,
    required this.password,
    required this.deviceToken,
  });

  String email;
  String password;
  String deviceToken;

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());
  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    email: json["email"],
    password: json["password"],
    deviceToken: json["mac_address"],
  );

  Map<String, dynamic> toJson() => {
    "phone": email,
    "password": password,
    "mac_address": deviceToken,
  };
}