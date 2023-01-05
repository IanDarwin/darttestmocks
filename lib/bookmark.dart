class Bookmark {
  var id = 0;
  final String url;
  final String category;
  final String text;
  Bookmark(this.category, this.url, this.text);
}

Bookmark sampleBookmark = Bookmark('news',
    'http://darwinsys.com/news',
    'Great new news source (coming soon :-))');