abstract class GenericService<T> {
  T create(news);
  List<T> read();
  T readOne(id);
  T update(id, news);
  T delete(id);
}