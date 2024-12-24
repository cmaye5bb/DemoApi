import 'package:json_annotation/json_annotation.dart';
  part 'user.g.dart';



@JsonSerializable()
class User {
  final int id;
  final String firstname;
  final String lastname;
  final String email;
  final String birthDate;

  User({required this.id, required this.firstname, required this.lastname, required this.email, required this.birthDate});

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
  Map<String,dynamic> toJson()  => _$UserToJson(this);
  

}