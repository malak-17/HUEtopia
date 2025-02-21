// Paste your Firebase Configuration here
const firebaseConfig = {
    apiKey: "AIzaSyA1G0NQF-HcLZKlL79xtBFVw1YuSCALVhI",
    authDomain: "huetopia-49ebd.firebaseapp.com",
    projectId: "huetopia-49ebd",
    storageBucket: "huetopia-49ebd.firebasestorage.app",
    messagingSenderId: "1073386925944",
    appId: "1:1073386925944:web:a1316852d84756fc95228d",
    measurementId: "G-W513TMKV4J"}
  
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  const auth = firebase.auth();
  const db = firebase.firestore();
  