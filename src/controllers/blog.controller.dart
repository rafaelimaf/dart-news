import 'dart:convert';
import 'package:shelf/shelf.dart';

class BlogController {
  Future<Response> createNews(Request req) async {
    return Response(201);
  }
  
  Future<Response> readNews(Request req) async {
    return Response(200, body: jsonEncode([]), headers: {"content-type": "application/json"});
  }

  Future<Response> updateNews(Request req, String id) async {    
    return Response(200, body: jsonEncode({
      "message": "Você editou a notícia $id"
    }));
  }

  Future<Response> deleteNews(Request req, String id) async {    
    return Response(204);
  }
}