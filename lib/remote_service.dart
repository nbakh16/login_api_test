import 'package:http/http.dart' as http;

class RemoteService {
  final baseUrl = "http://103.96.106.250:1065/";

  Future<void> login() async {
    final loginUrl = baseUrl! + 'apibdbl/Auth/loginBDBL';
    await http.post(Uri.parse(loginUrl), );
  }
}