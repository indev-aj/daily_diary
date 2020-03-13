class Entry {
  String title;
  String body;

  Entry({this.title, this.body});

  toJson() {
    return {
      "title" : title,
      "body" : body,
    };
  }
}