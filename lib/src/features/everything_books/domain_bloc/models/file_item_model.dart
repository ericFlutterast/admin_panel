import 'package:json_annotation/json_annotation.dart';

part 'file_item_model.g.dart';

@JsonSerializable(createToJson: false)
final class FileItemModel {
  const FileItemModel({
    required this.fileName,
    required this.displayName,
    required this.guid,
  });

  final String guid;
  final String displayName;
  final String fileName;

  factory FileItemModel.fromJson({required final Map<String, dynamic> json}) => _$FileItemModelFromJson(json);
}
