import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../controllers/news.controller.dart';

class NewsRouter {
  Handler get handler {
    final router = Router();

    router.post('/news', NewsController().create);

    router.get('/news', NewsController().read);

    router.get('/news/<id>', NewsController().readOne);

    router.put('/news/<id>', NewsController().update);

    router.delete('/news/<id>', NewsController().delete);

    return router;
  }
}