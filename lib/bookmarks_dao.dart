import "bookmark.dart";

class BookmarksDao {
  int id = 0;
  int insertBookmark(Bookmark newbie) {
    // Do something here
    return ++id;
  }
}
