// 🎯 Dart imports:
import 'dart:developer';
import 'dart:io';

// 📦 Package imports:
import "package:firebase_auth/firebase_auth.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// 🌎 Project imports:
import '../Models/UserModel.dart';

class UserRepository {
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // final FirebaseStorage _firebase_storage;
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> sendOtp(
      String phoneNumber,
      PhoneVerificationFailed phoneVerificationFailed,
      PhoneVerificationCompleted phoneVerificationCompleted,
      PhoneCodeSent phoneCodeSent,
      PhoneCodeAutoRetrievalTimeout autoRetrievalTimeout,
      {int forceResendToken}) async {
    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: Duration(seconds: 120),
      verificationCompleted: phoneVerificationCompleted,
      verificationFailed: phoneVerificationFailed,
      codeSent: phoneCodeSent,
      codeAutoRetrievalTimeout: autoRetrievalTimeout,
      forceResendingToken: forceResendToken,
    );
  }

  Future<UserCredential> verifyAndLogin(
      String verificationId, String smsCode) async {
    AuthCredential authCredential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    return _firebaseAuth.signInWithCredential(authCredential);
  }

  Future<void> signInAfterAutoVerify(AuthCredential authCredential) async {
    _firebaseAuth
        .signInWithCredential(authCredential)
        .then((UserCredential result) {})
        .catchError((e) {
      print(e);
      return "error";
    });
  }

  User getFirUser() {
    return _firebaseAuth.currentUser;
  }

  Future<UserModel> getUser() async {
    if (_firebaseAuth.currentUser != null) {
      return await getMyUser(_firebaseAuth.currentUser.uid);
    } else {
      return null;
    }
  }

  Future<void> logOut() async {
    _firebaseAuth.signOut();
  }

  Future<UserModel> getMyUser(String uid) async {
    final documentSnapshot = await _userCollection.doc(uid).get();
    final doc = documentSnapshot.data();
    if (doc != null) {
      return UserModel.fromData(doc, uid);
    } else {
      return null;
    }
  }

  Future createUser(UserModel user) async {
    final uid = _firebaseAuth.currentUser.uid;
    user.phone = _firebaseAuth.currentUser.phoneNumber;
    await FirebaseMessaging.instance
        .getToken()
        .then((value) => user.fcmToken = value);
    return await _userCollection
        .doc(uid)
        .set(user.toJson(), SetOptions(merge: true))
        .then((value) => print("User Created  " + uid))
        .catchError((error) => print("Failed to update user: $error"));
  }

  Future addDiamond(int diamond) async {
    if (diamond != null && diamond != 0) {
      int totalDiamond;
      final uid = _firebaseAuth.currentUser.uid;
      var snapshot = await _userCollection.doc(uid).get();
      int current = snapshot.data()['diamond'];
      if (current != null) {
        totalDiamond = current + diamond;
      } else {
        totalDiamond = diamond;
      }
      return await _userCollection
          .doc(uid)
          .update({'diamond': totalDiamond})
          .then((value) => print('Diamond Updated: $totalDiamond'))
          .catchError((error) => print('Failed to set XP: $error'));
    }
  }

  Future changeName(String newName) async {
    final uid = _firebaseAuth.currentUser.uid;
    _firebaseAuth.currentUser.updateProfile(displayName: newName);
    return await _userCollection
        .doc(uid)
        .update({'fullName': newName})
        .then((value) => print('name changed successfully'))
        .catchError((err) => print('Failed to change name: $err'));
  }

  Future changeDates(DateTime dueDate, DateTime lastPeriod) async {
    final uid = _firebaseAuth.currentUser.uid;
    return await _userCollection
        .doc(uid)
        .update({
          'dueDate': dueDate.toString(),
          'lastPeriod': lastPeriod.toString()
        })
        .then((value) => print('Date change successful'))
        .catchError((err) => print('Failed to change date $err'));
  }

  Future changeProfilePic(File profilePic) async {
    // final String uid = _firebaseAuth.currentUser.uid;
    // final reference = firebase_storage.FirebaseStorage.instance
    //     .ref().child('profile-photos/$uid.jpg');
    // try {
    //   await reference.putFile(profilePic);
    //   final String url = await reference.getDownloadURL();
    //   _firebaseAuth.currentUser.updateProfile(photoURL: url);
    //   await _userCollection
    //       .doc(uid)
    //       .update({'photoUrl': url})
    //       .then((value) => print('photo url changed successfully'))
    //       .catchError((err) => print('Failed to change photoUrl: $err'));
    //   print('upload complete');
    // } on FirebaseException catch (e) {
    //   log(e.message);
    // }
  }

  onFCMTokenChange(String token) {
    final uid = _firebaseAuth.currentUser.uid;
    FirebaseMessaging.instance.getToken().then(
      (token) {
        _userCollection
            .doc(uid)
            .update({'fcmToken': token})
            .then((value) => print('Date change successful'))
            .catchError((err) => print('Failed to change date $err'));
      },
    );
  }

  Future checkFCMToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isAlreadyChecked = preferences.getBool('fcmCheck') ?? false;
    if (!isAlreadyChecked) {
      final uid = _firebaseAuth.currentUser.uid;
      var userdoc = await _userCollection.doc(uid).get();
      if (userdoc.data()['fcmToken'] == null) {
        FirebaseMessaging.instance.getToken().then((token) {
          _userCollection.doc(uid).update({'fcmToken': token}).then((value) {
            preferences.setBool('fcmCheck', true);
            print('Date change successful');
          }).catchError((err) => print('Failed to change date $err'));
        });
      }
    }
  }
}
