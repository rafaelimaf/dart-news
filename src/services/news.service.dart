import '../database/entities/News.dart';
import 'generic.service.dart';

class NewsService extends GenericService<News> {
  final List<News> _model = [];

  @override
  News create(news) {
    throw UnimplementedError();
  }

  @override
  List<News> read() {
    throw UnimplementedError();
  }

  @override
  News readOne(id) {
    throw UnimplementedError();
  }

  @override
  News update(id, news) {
    throw UnimplementedError();
  }

  @override
  News delete(id) {
    throw UnimplementedError();
  }
}