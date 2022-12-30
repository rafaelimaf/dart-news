import 'server.dart';
import 'routes/index.router.dart';
import 'package:dart_dotenv/dart_dotenv.dart';

final Map env = DotEnv(filePath: '.env').getDotEnv();

RouterHandler router = RouterHandler();

void main() {
  var app = AppServer();

  app.initialize(
    handler: router.handler,
    address: env["ADDRESS"],
    port: int.parse(env["PORT"])
  );
}