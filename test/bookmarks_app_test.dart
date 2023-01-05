import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:dart_test/bookmark.dart';
import 'package:dart_test/bookmarks_app.dart';
import 'package:dart_test/bookmarks_dao.dart';
import 'package:mockito/annotations.dart';
import 'bookmarks_app_test.mocks.dart';

@GenerateMocks([BookmarksDao])
main() {
  test('returns the id of a new entry, if the call completes successfully', () async {
    final dao = MockBookmarksDao();
    when(dao.insertBookmark(sampleBookmark)).thenAnswer((_) => 42);
    var app = BookmarksApp((dao));
    expect(app.process() == 42, true);
  });
}