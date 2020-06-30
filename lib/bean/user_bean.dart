import 'package:json_annotation/json_annotation.dart';

part 'user_bean.g.dart';

@JsonSerializable()
class UserBean {
  String name;
  String email;
  String phone;

  UserBean(this.name, this.email, this.phone);

  factory UserBean.fromJson(Map<String, dynamic> json) => _$UserBeanFromJson(json);
  Map<String, dynamic> toJson() => _$UserBeanToJson(this);
}