import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class AppServer {
  Future<void> initialize(Handler router) async {
    String address = 'localhost';
    int port = 8080;

    await shelf_io.serve(router, address, port);
    print("Server is up on http://$address:$port");
  }
}