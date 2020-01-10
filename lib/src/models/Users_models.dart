import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

UsersModel usersFromJson(dynamic) => UsersModel.fromJson(json.decode(dynamic));

String usersToJson(UsersModel data) => json.encode(data.toJson(dynamic));


@JsonSerializable()
class UsersModel {


  int id;
  String documento;
  String fullname;
  String birthday;
  String location;
  String email;
  String password;
  bool status;


  UsersModel({

    this.id = 0,
    this.documento = "",
    this.fullname = "",
    this.birthday = "",
    this.location = "",
    this.email = "",
    this.password = "",
    this.status = true,    
  });

  UsersModel.fromJson(Map<String, dynamic> json):


        documento = json["documento"],
        fullname  = json["fullname"],
        birthday  = json["birthday"],
        location  = json["birthday"],
        email     = json["email"],
        password  = json["password"],
        status    = json["status"];


  Map<String, dynamic> toJson(dynamic) => {
 
      "documento" :  documento,
      "fullname"  :  fullname,
      "birthday"  :  birthday,
      "location"  :  location,
      "email"     :  email,
      "password"  :  password,
      "status"    :  status,

      
  };
}