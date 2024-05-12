abstract interface class IEverythingBooksRepository {
  Future<dynamic> fetchAllBooks();
  Future<void> deleteBook({required final String bookId});
}
