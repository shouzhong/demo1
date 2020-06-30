import 'package:json_annotation/json_annotation.dart';

part 'test_bean.g.dart';

@JsonSerializable()
class TestBean extends Object {

  int a;

  String b;

  bool c;

  TestBean(this.a,this.b,this.c,);

  factory TestBean.fromJson(Map<String, dynamic> srcJson) => _$TestBeanFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TestBeanToJson(this);

}