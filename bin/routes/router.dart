import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class RouterHandler {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response(200, body: '<h1>Hello World!</h1>',
        headers: {"content-type": "text/html"});
    });

    router.post('/login', (Request req) async {
      var bodyInfo = await req.readAsString();
      Map bodyParsed = jsonDecode(bodyInfo);

      if (bodyParsed["email"] == "rafael@rafael.com" && bodyParsed["password"] == "secret") {
        String response = jsonEncode({
          'token': 'AW4D6AW8D4W8',
          'role': 'admin'
        });
        
        return Response(200, body: response,
          headers: {"content-type": "application/json"});
      }
        String response = jsonEncode({
          "message": "Invalid email or password"
        });

        return Response(403, body: response,
          headers: {"content-type": "application/json"});

    });

    return router;
  }
}