import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../controllers/news.controller.dart';
import '../services/news.service.dart';

class NewsRouter {
  Handler get handler {
    final router = Router();

    router.post('/news', NewsController(NewsService()).createNews);

    router.get('/news', NewsController(NewsService()).readNews);

    router.put('/news/<id>', NewsController(NewsService()).updateNews);

    router.delete('/news/<id>', NewsController(NewsService()).deleteNews);

    return router;
  }
}