import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estu_casa_app/screens/crud.dart';


class HouseService {
  final CollectionReference _housesCollection =
      FirebaseFirestore.instance.collection('houses');

  Future<void> addHouse(House house) async {
    await _housesCollection.add(house.toMap());
  }

  Stream<List<House>> getHouses() {
    return _housesCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => House.fromMap(doc.data() as Map<String, dynamic>)).toList();
    });
  }

  Future<void> updateHouse(House house) async {
    await _housesCollection.doc(house.id).update(house.toMap());
  }

  Future<void> deleteHouse(String houseId) async {
    await _housesCollection.doc(houseId).delete();
  }
}
