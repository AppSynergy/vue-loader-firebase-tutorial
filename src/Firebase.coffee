import Firebase from 'firebase'

config =
  apiKey: "AIzaSyDzofwZagAvn4C22B41ekHs5qTUBUMuitg"
  authDomain: "vue-loader-firebase-tutorial.firebaseapp.com"
  databaseURL: "https://vue-loader-firebase-tutorial.firebaseio.com"
  storageBucket: "vue-loader-firebase-tutorial.appspot.com"
  messagingSenderId: "940903474211"

firebaseApp = Firebase.initializeApp config

provider = new Firebase.auth.GoogleAuthProvider()

FirebaseAPI =
  database: firebaseApp.database()
  googleSignin: () -> Firebase.auth().signInWithPopup(provider)

export default FirebaseAPI
