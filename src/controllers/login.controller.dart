import 'dart:convert';
import 'package:shelf/shelf.dart';

class LoginController {
  Future<Response> login(Request req) async {
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
  }
}