  import 'package:cloud_firestore/cloud_firestore.dart';


class UserModel {
  String? email;
  String? username;
  String? uid;
  String? bio;
  String? photoUrl;
  List<dynamic>? favourite;

  UserModel(
      {this.email,
      this.username,
      this.uid,
      this.bio,
      this.photoUrl,
      this.favourite});

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
    uid = json['uid'];
    bio = json['bio'];
    photoUrl = json['photoUrl'];
    favourite = json['followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['username'] = username;
    data['uid'] = uid;
    data['bio'] = bio;
    data['photoUrl'] = photoUrl;
    data['followers'] = favourite;
    return data;
  }

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
        email: snapshot["email"],
        username: snapshot["username"],
        uid: snapshot["uid"],
        bio: snapshot["bio"],
        photoUrl: snapshot["photoUrl"],
        favourite: snapshot["followers"],
        );
  }
}

// class User {
//     final String email;
//     final String uid;
//     final String photoUrl;
//     final String username;
//     final String bio;
//     final List followers;
//     final List following;
  
//   const User({
//     required this.email,
//     required this.uid,
//     required this.photoUrl,
//     required this.username,
//     required this.bio,
//     required this.followers,
//     required this.following,
//   });


// Map<String, dynamic> toJson() => {
// "username": username,
// "uid": uid,
// "email": email,
// "photUrl": photoUrl,
// "bio": bio,
// "followers": followers,
// "following": following,
// };

// static User fromSnap(DocumentSnapshot snap) {
//   var snapshot = snap.data() as Map <String, dynamic>;

//   return User (
//     username: snapshot['username'],
//     uid: snapshot['uid'],
//     email: snapshot['email'],
//     photoUrl: snapshot['photoUrl'],
//     bio: snapshot['bio'],
//     followers: snapshot['followers'],
//     following: snapshot['following'],
//   );
// }


//   }