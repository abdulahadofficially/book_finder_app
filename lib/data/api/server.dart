import 'package:http/http.dart' as http;
import '../../utils/helper_function.dart';

enum ApiType { get, post, put, delete }

class Server {
  Server._();

  static Future<http.Response> get(String url) async {
    return _call(url, apiType: ApiType.get);
  }

  static Future<http.Response> _call(String url, {required ApiType apiType
  }) async {
    if (await isInternetAvailable()) {
      try {
        final uri = Uri.parse(url);
        final headers = {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        };

        late http.Response response;

        switch (apiType) {
          case ApiType.get:
            response = await http.get(uri, headers: headers);
            break;
          default:
            throw Exception("Unsupported API Type");
        }

        if (response.statusCode == 200) {
          return response;
        } else {
          throw Exception("Error ${response.statusCode}");
        }
      } catch (e) {
        throw Exception("Something Went Wrong: $e");
      }
    } else {
      throw Exception("No Internet Connection");
    }
  }
}
