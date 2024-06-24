import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> getNews() async {
  try {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/everything?q=business&from=2024-05-24&sortBy=publishedAt&apiKey=d08679a5e53045ed943cf82c5a104af7'));

    final data = jsonDecode(response.body);
    // print(data);

    if (data['status'] != 'ok') {
      throw 'An Unexpected Error Occur';
    }
    // print(newsResponse);
    return data;
  } catch (e) {
    throw (e).toString();
  }
}
