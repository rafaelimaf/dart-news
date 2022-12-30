import 'package:shelf/shelf.dart';

abstract class GenericController {
  Future<Response> create(Request req);
  Future<Response> read(Request req);
  Future<Response> readOne(Request req);
  Future<Response> update(Request req);
  Future<Response> delete(Request req);
}