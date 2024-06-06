import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'filter_model.g.dart';

class FilterModel {
  FilterModel({
    required this.title,
    required this.id,
  });

  final int id;
  final String title;
}

@JsonSerializable(createToJson: false)
final class FacultyModel extends FilterModel {
  FacultyModel({
    required super.title,
    required super.id,
  });

  factory FacultyModel.fromJson(Map<String, dynamic> json) => _$FacultyModelFromJson(json);
}

@JsonSerializable(createToJson: false)
final class FieldModel extends FilterModel {
  FieldModel({
    required super.title,
    required super.id,
  });

  factory FieldModel.fromJson(Map<String, dynamic> json) => _$FieldModelFromJson(json);
}
