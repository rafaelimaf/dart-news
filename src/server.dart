import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

class AppServer {
  Future<void> initialize({
    required Handler handler,
    required address,
    required port
    }) async {
    await shelf_io.serve(handler, address, port);
    print("Server is up on http://$address:$port");
  }
}