import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/login.controller.dart';

class LoginRouter {
  Handler get handler {
    final router = Router();

    router.post('/login', LoginController().login);

    return router;
  }
}