importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyDhh9HinZcPft6E23hgbzK1uIoy8coyzgQ",
    authDomain: "feeefnet.firebaseapp.com",
    projectId: "feeefnet",
    storageBucket: "feeefnet.appspot.com",
    messagingSenderId: "24740023407",
    appId: "1:24740023407:web:132d6fc5091def2023519a",
    measurementId: "G-5S9MEJ582K"
  });
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
    console.log("onBackgroundMessage->", m);
});