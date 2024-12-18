import 'dart:convert';
import '../models/event_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<EventModel>> fetchEvents() async {
    final response =
        await http.get(Uri.parse('https://brianclincy.com/api/events'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => EventModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch events');
    }
  }
}
