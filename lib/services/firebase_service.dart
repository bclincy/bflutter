import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addLead(String firstName, String lastName, String email,
      String phone, DateTime appointmentDate) async {
    final leadData = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'appointmentDate': appointmentDate,
    };
    await _firestore.collection('leads').add(leadData);
  }
}
