import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TodoProvider with ChangeNotifier {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var type, category;
  addToDo() {
    FirebaseFirestore.instance.collection("Todo").add({
      'title': titleController.text,
      'description': descriptionController.text,
      'user':FirebaseAuth.instance.currentUser!.uid,
      'type': type,
      'category': category // 42
    });
    // Navigator.pop(context);
  }
}
