// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDfUGKLXKLy5ZVOHt1tyxTDQMHejxqbFsI',
    appId: '1:1050927205580:web:b002791ab5b0eadda74669',
    messagingSenderId: '1050927205580',
    projectId: 'auth-b5f70',
    authDomain: 'auth-b5f70.firebaseapp.com',
    storageBucket: 'auth-b5f70.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNoJTQBMuBfzBWGJ_n5Icv6DkkVgA1_7A',
    appId: '1:1050927205580:android:3eab6d55cfe57307a74669',
    messagingSenderId: '1050927205580',
    projectId: 'auth-b5f70',
    storageBucket: 'auth-b5f70.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnPKWa6NRJXrssYmHME00NSY1M_SL9Gnk',
    appId: '1:1050927205580:ios:86d3574adb32f79ba74669',
    messagingSenderId: '1050927205580',
    projectId: 'auth-b5f70',
    storageBucket: 'auth-b5f70.appspot.com',
    iosClientId: '1050927205580-7m1d43mib0an5sd3af4vsm0rgv4l930k.apps.googleusercontent.com',
    iosBundleId: 'com.example.groceryapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnPKWa6NRJXrssYmHME00NSY1M_SL9Gnk',
    appId: '1:1050927205580:ios:86d3574adb32f79ba74669',
    messagingSenderId: '1050927205580',
    projectId: 'auth-b5f70',
    storageBucket: 'auth-b5f70.appspot.com',
    iosClientId: '1050927205580-7m1d43mib0an5sd3af4vsm0rgv4l930k.apps.googleusercontent.com',
    iosBundleId: 'com.example.groceryapp',
  );
}