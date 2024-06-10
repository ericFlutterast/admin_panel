import 'package:admin_panel_for_library/src/features/common/data/data_sources_interfaces/everything_books_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/common/data/dto/book_dto/book_dto.dart';
import 'package:admin_panel_for_library/src/features/subject_management/data/data_sources/subject_data_source_interface.dart';
import 'package:admin_panel_for_library/src/features/subject_management/select_pdf_to_attach_to_subject/data/link_pdf_to_subject_repository/link_pdf_to_subject_repository_interface.dart';

final class LinkPdfToSubjectRepository implements ILinkPdfToSubjectRepository {
  LinkPdfToSubjectRepository({
    required IEverythingBooksDataSource everythingBooksDataSource,
    required IManagementBookLink linkBookService,
  })  : _everythingBooksDataSource = everythingBooksDataSource,
        _linkBookService = linkBookService;

  final IEverythingBooksDataSource _everythingBooksDataSource;
  final IManagementBookLink _linkBookService;

  @override
  Future<List<BookDto>> fetchAllBooks() async {
    return await _everythingBooksDataSource.fetchAllBooks();
  }

  @override
  Future<void> linkPdfToSubject({required int subjectId}) async {
    await _linkBookService.linkBook(subjectId: subjectId);
  }
}
