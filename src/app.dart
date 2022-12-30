import 'server.dart';
import './routes/router.dart';

RouterHandler router = RouterHandler();

void main() {
  var app = AppServer();

  app.initialize(
    handler: router.handler,
    address: 'localhost',
    port: 8080
  );
}