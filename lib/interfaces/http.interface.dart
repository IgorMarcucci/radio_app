import 'package:http/http.dart' as http;

abstract class IHttpService {
  Future<List<T>> getAll<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      });

  Future<T> get<T>(
      {required String endpoint,
      required T Function(Map<String, dynamic> json) fromJson,
      });

  Future<http.Response> post(
      {required String endpoint,
      required Map<String, dynamic> body,
      });

  Future<http.Response> put(
      {required String endpoint,
      required Map<String, dynamic> body,
      });

  Future<http.Response> delete(
      {required String endpoint, });
}