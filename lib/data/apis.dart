import 'package:dio/dio.dart';

const baseUrl = 'https://192.168.1.36:8012';

final dio = Dio();

Future<Map<String, dynamic>> studentLogin(String email, int id) async {
  final response = await dio.post('$baseUrl/tuition/student_login',
    data: {
      "email": email,
      "id":id,
    },
  );
  return response.data;
}