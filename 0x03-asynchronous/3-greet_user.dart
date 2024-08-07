// 3-util.dart

import 'dart:convert';

// Simulates fetching user data from an API
Future<String> fetchUserData() => Future.delayed(
  const Duration(seconds: 2),
  () => '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
);

// Simulates checking user credentials, returning true if valid
Future<bool> checkCredentials() => Future.delayed(
  const Duration(seconds: 2),
  () => true,
);
