import 'package:equatable/equatable.dart';

final class FileFragmentDto extends Equatable {
  const FileFragmentDto({
    required this.fileFragmentBytes,
    required this.fileName,
    required this.loadingPercent,
  });

  final double loadingPercent;
  final List<int> fileFragmentBytes;
  final String fileName;

  @override
  List<Object?> get props => [loadingPercent, fileFragmentBytes, fileName];

  FileFragmentDto copyWith({
    double? loadingPercent,
    List<int>? fileFragmentBytes,
    String? fileName,
  }) {
    return FileFragmentDto(
      fileName: this.fileName,
      fileFragmentBytes: fileFragmentBytes ?? this.fileFragmentBytes,
      loadingPercent: loadingPercent ?? this.loadingPercent,
    );
  }

  @override
  String toString() {
    return 'fileName :$fileName -${fileFragmentBytes.isNotEmpty}- percent :${loadingPercent.toStringAsFixed(4)}';
  }
}
