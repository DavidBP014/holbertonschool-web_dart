import '0-util.dart'; // This import assumes fetchUsersCount is in 0-util.dart

Future<void> usersCount() async {
  int count = await fetchUsersCount();
  print(count);
}