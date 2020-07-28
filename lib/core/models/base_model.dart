import 'package:freezed_annotation/freezed_annotation.dart';

abstract class BaseModel {
  @JsonKey(includeIfNull: false)
  final String id;

  @JsonKey(includeIfNull: false)
  final DateTime createdDate;

  @JsonKey(includeIfNull: false)
  final DateTime updatedDate;

  BaseModel({this.id, this.createdDate, this.updatedDate});

  Map<String, dynamic> toJson();
}
