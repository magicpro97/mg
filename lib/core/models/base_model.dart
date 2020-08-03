abstract class BaseModel {
  Map<String, dynamic> toJson();

  BaseModel();

  BaseModel.fromJson(Map<String, dynamic> json);
}
