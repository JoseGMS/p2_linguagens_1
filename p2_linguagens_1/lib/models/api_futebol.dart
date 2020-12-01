import 'package:http/http.dart' as http;

class FutAPI {

  final String apiUrl = "https://api.api-futebol.com.br/v1/";

  static const api_key = "live_00c695e09e2aef1f69c601024afd49";

  static const headers = {
    'Authorization: Bearer' api_key
  };

}
