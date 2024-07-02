import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_radio_app/interfaces/http.interface.dart';
import 'package:http/http.dart' as http;

class HttpService implements IHttpService{
  final _baseUrl = dotenv.get('BASE_URL');

  @override
  Future<List<T>> getAll<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      required String token}) async {
    Map<String, String> headers = {'Authorization': 'Bearer $token'};
    final response =
        await http.get(Uri.parse("$_baseUrl/$endpoint"), headers: headers);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data as List).map((item) => fromJson(item)).toList();
    } else {
      throw Exception("Failed to fetch $endpoint");
    }
  }

  @override
  Future<T> get<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      required String token}) async {
    Map<String, String> headers = {'Authorization': 'Bearer $token'};
    final response =
        await http.get(Uri.parse("$_baseUrl/$endpoint"), headers: headers);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return fromJson(data);
    } else {
      throw Exception("Failed to fetch $endpoint");
    }
  }

  @override
  Future<http.Response> post(
      {required String endpoint,
      required Map<String, dynamic> body,
      required String token}) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.post(Uri.parse("$_baseUrl/$endpoint"),
        body: json.encode(body), headers: headers);
    return response;
  }

  @override
  Future<http.Response> put(
      {required String endpoint,
      required Map<String, dynamic> body,
      required String token}) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response = await http.put(Uri.parse("$_baseUrl/$endpoint"),
        body: json.encode(body), headers: headers);
    return response;
  }

  @override
  Future<http.Response> delete(
      {required String endpoint, required String token}) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    final response =
        await http.delete(Uri.parse("$_baseUrl/$endpoint"), headers: headers);
    return response;
  }
}