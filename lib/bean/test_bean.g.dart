// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_bean.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestBean _$TestBeanFromJson(Map<String, dynamic> json) {
  return TestBean(
    json['a'] as int,
    json['b'] as String,
    json['c'] as bool,
  );
}

Map<String, dynamic> _$TestBeanToJson(TestBean instance) => <String, dynamic>{
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
    };
