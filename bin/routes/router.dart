import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'login.router.dart';

class RouterHandler {
  Handler get handler {
    final router = Router();

    router.all('/login', LoginRouter().handler);

    return router;
  }
}