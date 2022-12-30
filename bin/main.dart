import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'router.dart';

void main() async {
  var router = RouterHandler();

  await shelf_io.serve(router.handler, 'localhost', 8080);

  print('Server is up on http://localhost:8080');
}