import 'package:http/http.dart' as http;

abstract class IHttpService {
  Future<List<T>> getAll<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      required String token});

  Future<T> get<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      required String token});

  Future<http.Response> post(
      {required String endpoint,
      required Map<String, dynamic> body,
      required String token});

  Future<http.Response> put(
      {required String endpoint,
      required Map<String, dynamic> body,
      required String token});

  Future<http.Response> delete(
      {required String endpoint, required String token});
}