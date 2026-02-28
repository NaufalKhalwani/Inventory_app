import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app/models/item_model.dart';

class InventoryService {
  final String baseUrl = 'http://10.0.2.2:8000';

  Future<List<Item>> getItems() async {
    final response = await http.get(Uri.parse('$baseUrl/items/'));

    if (response.statusCode != 200) {
      throw Exception('Failed to load items');
    }

    final List data = jsonDecode(response.body);
    return data.map((item) => Item.fromJson(item)).toList();
  }

  Future<void> addItem(String name, int price) async {
    await http.post(
      Uri.parse('$baseUrl/items/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'name': name, 'price': price}),
    );
  }
}
