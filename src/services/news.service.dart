class NewsService {
  List _db = [];

  createNews(news) async {
    _db.add(news);
    
    return _db;
  }
  
  readNews() async {
    return _db;
  }

  updateNews(id, news) async {    
    final result = _db.insert(id, news);

    return result;
  }

  deleteNews(id) async {    
    final result = _db.removeWhere((element) => element.id == id);

    return result;
  }
}