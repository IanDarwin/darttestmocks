import "bookmark.dart";
import "bookmarks_dao.dart";

main(){
  var dao = BookmarksDao();
  var app = BookmarksApp(dao);
  print("New ID is ${app.process()}");
}

/// Stand-in for a full application
class BookmarksApp {
  BookmarksDao bookmarksDao;

  BookmarksApp(this.bookmarksDao);
  int process() {
    // Assume the app gets the data from a UI and inserts it
    int newId = bookmarksDao.insertBookmark(sampleBookmark);
    return newId;
  }
}