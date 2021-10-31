import 'dart:convert';

class UserModel {
     String? uid;
     String? name;
     String? email;
     String? password;
     String? confirmPass;


     //receiving data from server
     UserModel({this.uid,this.name,this.email,this.password,this.confirmPass});
     factory UserModel.fromMap(map)
     {
       return UserModel(
           uid: map['uid'],
           name: map['name'],
           email: map['email'],
           password: map['password'],
           confirmPass: map['confirmPass']
       );
     }
     // sending data to server
   Map<String,dynamic> toMap(){
       return{
         'uid': uid,
         'name': name,
         'email': email,
         'password': password,
         'confirmPass': confirmPass,
       };
   }


}
