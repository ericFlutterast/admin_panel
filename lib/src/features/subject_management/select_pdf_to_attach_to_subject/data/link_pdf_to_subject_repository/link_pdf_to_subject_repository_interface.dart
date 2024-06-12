import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';

abstract interface class ILinkPdfToSubjectRepository {
  Future<List<BookDto>> fetchAllBooks();

  Future<void> linkPdfToSubject({required int subjectId, required String bookId});
}
