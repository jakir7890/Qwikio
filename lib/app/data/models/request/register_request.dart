// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromMap(jsonString);

import 'dart:convert';

RegisterRequest registerRequestFromMap(String str) => RegisterRequest.fromMap(json.decode(str));

String registerRequestToMap(RegisterRequest data) => json.encode(data.toMap());

class RegisterRequest {
  final String? name;
  final String? email;
  final String? countryCode;
  final String? isoCode;
  final String? phone;
  final String? gender;
  final DateTime? dob;
  final int? divisionId;
  final int? districtId;
  final String? address;
  final String? password;
  final String? macAddress;
  final String? profilePhoto;

  RegisterRequest({
    this.name,
    this.email,
    this.countryCode,
    this.isoCode,
    this.phone,
    this.gender,
    this.dob,
    this.divisionId,
    this.districtId,
    this.address,
    this.password,
    this.macAddress,
    this.profilePhoto,
  });

  RegisterRequest copyWith({
    String? name,
    String? email,
    String? countryCode,
    String? phone,
    String? gender,
    DateTime? dob,
    int? divisionId,
    int? districtId,
    String? address,
    String? password,
    String? macAddress,
    String? profilePhoto,
  }) =>
      RegisterRequest(
        name: name ?? this.name,
        email: email ?? this.email,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        gender: gender ?? this.gender,
        dob: dob ?? this.dob,
        divisionId: divisionId ?? this.divisionId,
        districtId: districtId ?? this.districtId,
        address: address ?? this.address,
        password: password ?? this.password,
        macAddress: macAddress ?? this.macAddress,
        profilePhoto: profilePhoto ?? this.profilePhoto,
      );

  factory RegisterRequest.fromMap(Map<String, dynamic> json) => RegisterRequest(
    name: json["name"],
    email: json["email"],
    countryCode: json["country_code"],
    phone: json["phone"],
    gender: json["gender"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    divisionId: json["division_id"],
    districtId: json["district_id"],
    address: json["address"],
    password: json["password"],
    macAddress: json["mac_address"],
    profilePhoto: json["profile_photo"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "email": email,
    "country_code": countryCode,
    "iso_code": isoCode,
    "phone": phone,
    "gender": gender,
    "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "division_id": divisionId,
    "district_id": districtId,
    "address": address,
    "password": password,
    "mac_address": macAddress,
    "profile_photo": profilePhoto,
  };
}
