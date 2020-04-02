import 'package:http/http.dart' as http;

class Github {
  final String userName;
  final String url = 'https://api.github.com/';
  static String client_id = 'e0c46048ac24a783667c';
  static String client_secret = '6c349569c9951443ec674f3bd2b501303153fcac';

  final String query = "?client_id=${client_id}&client_secret=${client_secret}";

  Github(this.userName);

  Future<http.Response> fetchUser() {
    return http.get(url + 'users/' + userName + query);
  }

  Future<http.Response> fetchFollowing() {
    return http.get(url + 'users/' + userName + '/following' + query);
  }

  Future<http.Response> fetchRepos() {
    return http.get(url + 'users/' + userName + '/repos' + query);
  }
}
