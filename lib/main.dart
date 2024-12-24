import 'package:api_demo/api_service.dart';
import 'package:api_demo/models/user.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});


  late ApiService _apiService;
  late Future<List<User>> userList;


  @override
  Widget build(BuildContext context) {

    final dio = Dio();
    _apiService = ApiService(dio);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(onPressed : (){
          
            userList = _apiService.getUsers();
            _getUser(userList);         
            
                
          }
          , child: Text("Get User")),
        )
      ),
    );
  }




  void _getUser(Future<List<User>> userList)
  {
    userList.then((users)
    {
      for (var user in users) {
      print('User: ${user.firstname}, Email: ${user.email}');
    }
    }
    ).catchError((error){
      print('Error fetching users: $error');
    });

  }
}
