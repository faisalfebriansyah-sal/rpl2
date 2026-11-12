import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/api_constants.dart';
import '../models/post.dart';

class ApiService {
  Future<List<Post>> fetchPosts() async {
    final url = Uri.parse(
      '${ApiContants.baseUrl}${ApiContants.albumEndpoint}',
      );

      try {
        final response = await http.get(url). timeout(const Duration(seconds: 10)); 

        if (response.statusCode == 200) {
          final List data = jsonDecode (response.body);
          return data.map((e) => Post.fromJson(e)).toList();
        } else {
          throw Exception('Gagal Memuat Data (kode status: ${response.statusCode})');
        }
      } on TimeoutException {
        throw Exception('koneksi terlau lama, silahkan coba lagi');
    }
  }
}
