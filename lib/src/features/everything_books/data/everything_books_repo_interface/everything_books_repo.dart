abstract interface class IEverythingBooksRepository {
  Future<dynamic> fetchAllBooks() async {}
  Future<void> deleteBook({required final String bookId}) async {}
}
