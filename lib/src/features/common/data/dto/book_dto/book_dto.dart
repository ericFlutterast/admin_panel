import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.g.dart';

@JsonSerializable(createToJson: false)
class BookDto {
  const BookDto({
    required this.guid,
    required this.displayName,
    required this.fileName,
  });

  final String guid;
  final String displayName;
  final String fileName;

  factory BookDto.fromJson(Map<String, dynamic> json) => _$BookDtoFromJson(json);
}
