import './infra/server.dart';
import './routes/router.dart';

RouterHandler router = RouterHandler();

void main() {
  var app = AppServer();

  app.initialize(router.handler);
}