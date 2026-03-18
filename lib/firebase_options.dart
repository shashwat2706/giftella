import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        return android;
    }
  }

  // Replace these values by running:

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_Wyl9zn4C3qR0kx_a3UfAPYMCJCHmcPg',
    appId: '1:474410581961:android:6f0916f46f5d2095bc7218',
    messagingSenderId: '474410581961',
    projectId: 'giftella-6967b',
    storageBucket: 'giftella-6967b.firebasestorage.app',
  );

  // flutterfire configure

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASHYQP7ez2uNbZn-9V56VsnzBmseky878',
    appId: '1:474410581961:ios:333ed72574e415d6bc7218',
    messagingSenderId: '474410581961',
    projectId: 'giftella-6967b',
    storageBucket: 'giftella-6967b.firebasestorage.app',
    iosClientId: '474410581961-0b3sro6ifmv1fl189e9uu4nm6mae5ir6.apps.googleusercontent.com',
    iosBundleId: 'com.example.giftella',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASHYQP7ez2uNbZn-9V56VsnzBmseky878',
    appId: '1:474410581961:ios:333ed72574e415d6bc7218',
    messagingSenderId: '474410581961',
    projectId: 'giftella-6967b',
    storageBucket: 'giftella-6967b.firebasestorage.app',
    iosClientId: '474410581961-0b3sro6ifmv1fl189e9uu4nm6mae5ir6.apps.googleusercontent.com',
    iosBundleId: 'com.example.giftella',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAuZqc6pCTzMo0dhOAMqeZyopki_zOOE1Q',
    appId: '1:474410581961:web:0c1921685770bfa8bc7218',
    messagingSenderId: '474410581961',
    projectId: 'giftella-6967b',
    authDomain: 'giftella-6967b.firebaseapp.com',
    storageBucket: 'giftella-6967b.firebasestorage.app',
    measurementId: 'G-MW4YC7JKY8',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAuZqc6pCTzMo0dhOAMqeZyopki_zOOE1Q',
    appId: '1:474410581961:web:8294b4d8cbd0621dbc7218',
    messagingSenderId: '474410581961',
    projectId: 'giftella-6967b',
    authDomain: 'giftella-6967b.firebaseapp.com',
    storageBucket: 'giftella-6967b.firebasestorage.app',
    measurementId: 'G-22ZNTBS9QT',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'REPLACE_ME',
    appId: 'REPLACE_ME',
    messagingSenderId: 'REPLACE_ME',
    projectId: 'REPLACE_ME',
  );
}