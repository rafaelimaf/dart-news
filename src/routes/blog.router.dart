import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../controllers/blog.controller.dart';

class BlogRouter {
  Handler get handler {
    final router = Router();

    router.post('/news', BlogController().createNews);

    router.get('/news', BlogController().readNews);

    router.put('/news/<id>', BlogController().updateNews);

    router.delete('/news/<id>', BlogController().deleteNews);

    return router;
  }
}