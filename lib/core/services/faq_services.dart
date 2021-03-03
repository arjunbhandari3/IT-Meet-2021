import 'package:cloud_firestore/cloud_firestore.dart';

class FAQsService {
  final CollectionReference _faqsCategoryCollectionRef =
      FirebaseFirestore.instance.collection('FAQs');

  Future<List<QueryDocumentSnapshot>> getFAQs() async {
    var value = await _faqsCategoryCollectionRef.get();

    return value.docs;
  }
}
