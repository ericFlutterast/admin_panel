import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_model.g.dart';

abstract class FilterModel {
  FilterModel({
    required this.title,
    required this.id,
  });

  final String id;
  final String title;
}

@JsonSerializable(createToJson: false)
class FacultyModel extends FilterModel {
  FacultyModel({
    required super.title,
    required super.id,
  });

  factory FacultyModel.fromJson(Map<String, dynamic> json) => _$FacultyModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class FieldModel extends FilterModel {
  FieldModel({
    required super.title,
    required super.id,
  });

  factory FieldModel.fromJson(Map<String, dynamic> json) => _$FieldModelFromJson(json);
}
