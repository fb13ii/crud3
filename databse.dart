

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseMethods{
  Future addEmployeeDatails(Map<String,dynamic> employeeInfoMap, String id)async{
return await FirebaseFirestore.instance.collection("Employee").doc(id).set(employeeInfoMap);
  }

Future<Stream<QuerySnapshot>> getEmployeeDetails()async{
  return await FirebaseFirestore.instance.collection("Employee").snapshots();
}
Future updateEmployeeDetail(String id, Map<String, dynamic> updateInfo)async{
  return await FirebaseFirestore.instance.collection("Employee").doc(id).update(updateInfo);
}

Future deleteEmployeeDetail(String id)async{
  return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
}
}