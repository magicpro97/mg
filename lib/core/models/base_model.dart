import 'package:equatable/equatable.dart';

abstract class BaseModel extends Equatable {
  Map<String, dynamic> toJson();

  BaseModel();

  BaseModel.fromJson(Map<String, dynamic> json);
}
