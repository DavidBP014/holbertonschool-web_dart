import 'dart:async';
import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> getUserId() async {
  String userData = await fetchUserData();
  final Map<String, dynamic> userMap = jsonDecode(userData);
  return userMap['id'] as String;
}