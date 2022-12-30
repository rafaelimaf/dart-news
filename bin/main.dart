import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main() async {
  await shelf_io.serve((request) => Response(200, body: 'Hello World!'), 'localhost', 8080);

  print('Server is up on http://localhost:8080');
}