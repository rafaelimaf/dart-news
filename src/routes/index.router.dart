import 'package:shelf/shelf.dart';
import 'news.router.dart';
import 'login.router.dart';

class RouterHandler {
  Handler get handler {
    var router = Cascade()
      .add(LoginRouter().handler)
      .add(NewsRouter().handler)
      .handler;

    var pipe = Pipeline().addMiddleware(logRequests()).addHandler(router);

    return pipe;
  }
}