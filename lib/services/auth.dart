import 'package:firebase_auth/firebase_auth.dart';

class AuthService{


    final FirebaseAuth _auth  = FirebaseAuth.instance;


  //sign in anonq

  Future SignInAnon () async{
    try{
      UserCredential result =  await _auth.signInAnonymously();
      User user = result.user;
      return user;
    }catch(e){
        print(e.toString());
        return null;
    }
  }

  //sign in email and password

  //register email and password

  //sign out


}