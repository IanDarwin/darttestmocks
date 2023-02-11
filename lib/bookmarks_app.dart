import "bookmark.dart";
import "bookmarks_dao.dart";

main(){
  var dao = BookmarksDao();
  var app = BookmarksApp(dao);
  print("New ID is ${app.process()}");
}

/// This is the application (well, a stand-in for a real application)
class BookmarksApp {
  BookmarksDao bookmarksDao;

  BookmarksApp(this.bookmarksDao);

  /// This is the method we want to test
  int process() {
    // Pretend the app gets the data from a UI and inserts it
    var bookmark = sampleBookmark;
    int newId = bookmarksDao.insertBookmark(bookmark);
    return newId;
  }
}