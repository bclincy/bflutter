class EventModel {
  final String id;
  final String title;
  final String date;
  final String description;
  final String imageUrl;

  EventModel({
    required this.id,
    required this.title,
    required this.date,
    required this.description,
    required this.imageUrl,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
        id: json['id'],
        title: json['title'],
        date: json['date'],
        description: json['description'],
        imageUrl: json['imageUrl']);
  }
}
