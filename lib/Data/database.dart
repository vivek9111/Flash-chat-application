import 'package:cloud_firestore/cloud_firestore.dart';

class Databasemethods{

  getusername(String username) async{
        return await FirebaseFirestore.instance.collection("users")
             .where("name", isEqualTo: username)
             .get();
  }

  uploaduserinfo(usermap){
      FirebaseFirestore.instance.collection("users")
          .add(usermap);
  }

}
