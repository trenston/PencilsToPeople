// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyBjUd6V9QswMI5oh5ijbZ0ssNhI27xH5LY',
    appId: '1:460737365115:web:14d3aca85e29f9c5dccede',
    messagingSenderId: '460737365115',
    projectId: 'pencilstopeople-64d9a',
    authDomain: 'pencilstopeople-64d9a.firebaseapp.com',
    storageBucket: 'pencilstopeople-64d9a.firebasestorage.app',
    measurementId: 'G-NZ22B35WVD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTnFiwYwc6csQXD2ZtVPB1J8lpUpzzCXU',
    appId: '1:460737365115:android:1871dc7428a649b1dccede',
    messagingSenderId: '460737365115',
    projectId: 'pencilstopeople-64d9a',
    storageBucket: 'pencilstopeople-64d9a.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXGB860dXD0ZaFnBUgyKTJvigyv5FYKNc',
    appId: '1:460737365115:ios:41f505f1129296f9dccede',
    messagingSenderId: '460737365115',
    projectId: 'pencilstopeople-64d9a',
    storageBucket: 'pencilstopeople-64d9a.firebasestorage.app',
    iosBundleId: 'com.example.frontend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAXGB860dXD0ZaFnBUgyKTJvigyv5FYKNc',
    appId: '1:460737365115:ios:41f505f1129296f9dccede',
    messagingSenderId: '460737365115',
    projectId: 'pencilstopeople-64d9a',
    storageBucket: 'pencilstopeople-64d9a.firebasestorage.app',
    iosBundleId: 'com.example.frontend',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBjUd6V9QswMI5oh5ijbZ0ssNhI27xH5LY',
    appId: '1:460737365115:web:b49d562c3c2a96d1dccede',
    messagingSenderId: '460737365115',
    projectId: 'pencilstopeople-64d9a',
    authDomain: 'pencilstopeople-64d9a.firebaseapp.com',
    storageBucket: 'pencilstopeople-64d9a.firebasestorage.app',
    measurementId: 'G-2CX5VZHTJG',
  );
}
