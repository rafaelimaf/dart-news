import 'package:shelf/shelf.dart';
import '../services/generic.service.dart';
import '../services/news.service.dart';
import 'generic.controller.dart';

class NewsController extends GenericController {
  final GenericService _service = NewsService();

  @override
  Future<Response> create(Request req) async {
    return Response(201);
  }

  @override
  Future<Response> read(Request req) async {
    return Response(200);
  }

  @override
  Future<Response> readOne(Request req) async {
    return Response(200);
  }

  @override
  Future<Response> update(Request req) async {
    return Response(200);
  }

  @override
  Future<Response> delete(Request req) async {
    return Response(204);
  }
}