import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    final userData = await fetchUserData();
    final user = json.decode(userData);
    final userId = user['id'];

    // Fetch user orders
    final ordersData = await fetchUserOrders(userId);
    final List<dynamic> orders = json.decode(ordersData);

    // Calculate total price
    double total = 0;
    for (var product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = json.decode(priceData);
      total += price;
    }

    return total;
  } catch (e) {
    // If any error occurs, return -1
    return -1;
  }
}