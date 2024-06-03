// To parse this JSON data, do
//
//     final userResponse = userResponseFromMap(jsonString);

import 'dart:convert';

UserResponse userResponseFromMap(String str) => UserResponse.fromMap(json.decode(str));

String userResponseToMap(UserResponse data) => json.encode(data.toMap());

class UserResponse {
  final String? name;
  final String? email;
  final String? countryCode;
  final String? phone;
  final String? phoneNumber;
  final String? gender;
  final DateTime? dob;
  final int? divisionId;
  final String? divisionName;
  final int? districtId;
  final String? districtName;
  final String? address;
  final dynamic status;
  final String? profilePhoto;

  UserResponse({
    this.name,
    this.email,
    this.countryCode,
    this.phone,
    this.phoneNumber,
    this.gender,
    this.dob,
    this.divisionId,
    this.divisionName,
    this.districtId,
    this.districtName,
    this.address,
    this.status,
    this.profilePhoto,
  });

  UserResponse copyWith({
    String? name,
    String? email,
    String? countryCode,
    String? phone,
    String? phoneNumber,
    String? gender,
    DateTime? dob,
    int? divisionId,
    String? divisionName,
    int? districtId,
    String? districtName,
    String? address,
    dynamic status,
    String? profilePhoto,
  }) =>
      UserResponse(
        name: name ?? this.name,
        email: email ?? this.email,
        countryCode: countryCode ?? this.countryCode,
        phone: phone ?? this.phone,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        gender: gender ?? this.gender,
        dob: dob ?? this.dob,
        divisionId: divisionId ?? this.divisionId,
        divisionName: divisionName ?? this.divisionName,
        districtId: districtId ?? this.districtId,
        districtName: districtName ?? this.districtName,
        address: address ?? this.address,
        status: status ?? this.status,
        profilePhoto: profilePhoto ?? this.profilePhoto,
      );

  factory UserResponse.fromMap(Map<String, dynamic> json) => UserResponse(
    name: json["name"],
    email: json["email"],
    countryCode: json["country_code"],
    phone: json["phone"],
    phoneNumber: json["phone_number"],
    gender: json["gender"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    divisionId: json["division_id"],
    divisionName: json["division_name"],
    districtId: json["district_id"],
    districtName: json["district_name"],
    address: json["address"],
    status: json["status"],
    profilePhoto: json["profile_photo"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "email": email,
    "country_code": countryCode,
    "phone": phone,
    "phone_number": phoneNumber,
    "gender": gender,
    "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "division_id": divisionId,
    "division_name": divisionName,
    "district_id": districtId,
    "district_name": districtName,
    "address": address,
    "status": status,
    "profile_photo": profilePhoto,
  };
}
