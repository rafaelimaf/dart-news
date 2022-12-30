import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class RouterHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response(200, body: 'Hello World!');
    });

    router.post('/login', (Request req) async {
      var bodyInfo = await req.readAsString();
      Map bodyParsed = jsonDecode(bodyInfo);

      if (bodyParsed["email"] == "rafael@rafael.com" && bodyParsed["password"] == "secret") {
        return Response(200, body: 'User logged with exit.');
      } return Response(403, body: "Invalid email or password");

    });

    return router;
  }
}