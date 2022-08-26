import 'package:http/http.dart';
import 'package:projeto_teste_mottu/infra/http/http_adapter.dart';

HttpAdapter makeHttpClient() => HttpAdapter(client: Client());
