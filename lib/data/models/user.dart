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
  });

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  // TODO: implement props
  List<Object> get props => [username];
}
