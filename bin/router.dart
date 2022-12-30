import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class RouterHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response(200, body: 'Hello World!');
    });

    router.get('/query', (Request req) {
      String? user = req.url.queryParameters["user"];

      return Response(200, body: 'Hello $user!');
    });

    return router;
  }
}