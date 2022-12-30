import 'package:shelf/shelf.dart';

class BlogController {
  Future<Response> getNews(Request req) async {
    return Response(200, body: "[]");
  }
}