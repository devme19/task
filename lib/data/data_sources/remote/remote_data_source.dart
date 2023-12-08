import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task/core/generics.dart';


abstract class RemoteDataSource {
  Future<T> get<T, K>(String url);
}

class RemoteDataSourceImpl implements RemoteDataSource{

  @override
  Future<T> get<T, K>(String url) async{
    try{
      http.Response response = await http.get(Uri.parse(url));
      if(response.statusCode == 200)
      {
        if(T == bool) {
          return true as T;
        }
        return Generics.fromJson<T,K>(json.decode(response.body));
        // return response.body["message"] as T;
      }
      else {
        return false as T;
      }
    }on Exception catch(e){
      throw Exception(e);
    }
  }
}