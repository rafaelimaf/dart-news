import 'package:shelf/shelf.dart';
import 'blog.router.dart';
import 'login.router.dart';

class RouterHandler {
  Handler get handler {
    var router = Cascade()
      .add(LoginRouter().handler)
      .add(BlogRouter().handler)
      .handler;

    return router;
  }
}