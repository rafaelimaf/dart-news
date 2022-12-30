import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../controllers/blog.controller.dart';

class BlogRouter {
  Handler get handler {
    final router = Router();

    router.get('/blog/news', BlogController().getNews);

    return router;
  }
}