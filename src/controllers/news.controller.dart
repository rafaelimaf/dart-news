import 'dart:convert';
import 'package:shelf/shelf.dart';

import '../services/news.service.dart';

class NewsController {
  final NewsService _service;

  NewsController(this._service);


  Future<Response> createNews(Request req) async {
    await _service.createNews();
    
    return Response(201);
  }
  
  Future<Response> readNews(Request req) async {
    await _service.readNews();

    return Response(200, body: jsonEncode([]), headers: {"content-type": "application/json"});
  }

  Future<Response> updateNews(Request req, String id) async {    
    await _service.updateNews(id);
    
    return Response(200, body: jsonEncode({
      "message": "Você editou a notícia $id"
    }));
  }

  Future<Response> deleteNews(Request req, String id) async {
    await _service.deleteNews(id);

    return Response(204);
  }
}