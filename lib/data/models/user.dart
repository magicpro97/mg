import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/models/base_model.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends BaseModel {
  @JsonKey(required: true)
  final String username;

  User({
    String id,
    this.username,
    DateTime createdDate,
    DateTime updatedDate,
  }) : super(
          id: id,
          createdDate: createdDate ?? DateTime.now(),
          updatedDate: updatedDate ?? DateTime.now(),
        );

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
