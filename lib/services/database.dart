import 'package:IoT_Dashboard/models/brew.dart';
import 'package:IoT_Dashboard/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart'; 

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});


  Future showdata() async{
    DatabaseReference sensorData = FirebaseDatabase.instance.reference().child('users/$uid/IotData/Locations/Data/');
    sensorData.limitToFirst(2).once().then((DataSnapshot snapshot){
      print(snapshot.value);
    });
  }
}

/*   //collection reference
  final CollectionReference brewCollection =
      Firestore.instance.collection('brews');

  Future updateUserData(String sugars, String name, int strength) async {
    print(
        'DatabaseService.updateUserData(sugars: $sugars, name: $name, strength: $strength');

    return await brewCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  //brew list from snapshots
  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Brew(
        name: doc.data['name'] ?? '',
        sugars: doc.data['sugars'] ?? '',
        strength: doc.data['strength'] ?? 0,
      );
    }).toList();
  }

  //get brews stream
  Stream<List<Brew>> get brews {
    return brewCollection.snapshots()
    .map(_brewListFromSnapshot);
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      sugars: snapshot.data['sugars'],
      strength: snapshot.data['strength'],
    );
  }

  //get user doc stream
  Stream<UserData> get userData {
    return brewCollection.document(uid).snapshots()
      .map(_userDataFromSnapshot);
  } */

