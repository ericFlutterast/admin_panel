import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/data/link_pdf_to_subject_repository/link_pdf_to_subject_repository_interface.dart';

final class LinkPdfToSubjectRepository implements ILinkPdfToSubjectRepository {
  LinkPdfToSubjectRepository({
    required IEverythingBooksDataSource everythingBooksDataSource,
  }) : _everythingBooksDataSource = everythingBooksDataSource;

  final IEverythingBooksDataSource _everythingBooksDataSource;

  @override
  Future<List<BookDto>> fetchAllBooks() async {
    return await _everythingBooksDataSource.fetchAllBooks();
  }
}
