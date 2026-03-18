import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/app_user.dart';

class UserService {
  const UserService(this._firestore);

  final FirebaseFirestore _firestore;

  DocumentReference<Map<String, dynamic>> _userDoc(String uid) =>
      _firestore.collection('users').doc(uid);

  Future<void> upsertFromFirebaseUser(User user) async {
    final appUser = AppUser(
      uid: user.uid,
      email: user.email ?? '',
      displayName: user.displayName ?? '',
      photoUrl: user.photoURL ?? '',
      createdAtMillis: DateTime.now().millisecondsSinceEpoch,
    );

    await _userDoc(user.uid).set(appUser.toJson(), SetOptions(merge: true));
  }
}

