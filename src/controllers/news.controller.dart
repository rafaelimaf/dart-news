import 'dart:convert';
import 'package:shelf/shelf.dart';
import '../services/news.service.dart';

class NewsController {
  final NewsService _service;

  NewsController(this._service);


  Future<Response> createNews(Request req) async {
    final body = await req.readAsString();

    final response = await _service.createNews(jsonDecode(body));
    
    return Response(201, body: jsonEncode(response));
  }
  
  Future<Response> readNews(Request req) async {
    final response = await _service.readNews();

    return Response(200, body: jsonEncode(response));
  }

  Future<Response> updateNews(Request req, String id) async {    
    final body = await req.readAsString();
    final bodyParsed = jsonDecode(body);

    await _service.updateNews(bodyParsed["id"], bodyParsed);
    
    return Response(200);
  }

  Future<Response> deleteNews(Request req, String id) async {
    final body = await req.readAsString();
    final bodyParsed = jsonDecode(body);

    await _service.deleteNews(bodyParsed["id"]);

    return Response(204);
  }
}