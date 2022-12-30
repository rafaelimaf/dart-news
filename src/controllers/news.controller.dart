import 'package:shelf/shelf.dart';
import '../services/news.service.dart';
import 'generic.controller.dart';

class NewsController extends GenericController {
  final NewsService _service = NewsService();

  @override
  Future<Response> create(Request req) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> read(Request req) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> readOne(Request req) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> update(Request req) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> delete(Request req) async {
    throw UnimplementedError();
  }
}