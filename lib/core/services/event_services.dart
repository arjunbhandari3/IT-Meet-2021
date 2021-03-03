import 'package:cloud_firestore/cloud_firestore.dart';

class EventService {
  final CollectionReference _eventCollectionRef =
      FirebaseFirestore.instance.collection('Events');

  Future<List<QueryDocumentSnapshot>> getEvent() async {
    var value = await _eventCollectionRef.get();

    return value.docs;
  }
}
