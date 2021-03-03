import 'package:cloud_firestore/cloud_firestore.dart';

class SponsorService {
  final CollectionReference _sponsorCategoryCollectionRef =
      FirebaseFirestore.instance.collection('Sponsors');

  Future<List<QueryDocumentSnapshot>> getSponsorsByCategory() async {
    var value = await _sponsorCategoryCollectionRef.get();

    return value.docs;
  }
}
