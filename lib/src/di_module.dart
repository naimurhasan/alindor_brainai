import 'package:alindor_brainai/src/core/network/http_client.dart';
import 'package:get_it/get_it.dart';

final GetIt di = GetIt.instance;

Future<void> initDI() async {
  di.registerSingleton<BaseHttpClient>(BaseHttpClient());
}
