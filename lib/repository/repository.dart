

import 'package:task/data/data_sources/local/local_data_source.dart';
import 'package:task/data/data_sources/remote/remote_data_source.dart';
import 'package:task/data/models/all_breeds_model.dart';
import 'package:task/data/models/picture_model.dart';

class Repository{

  final RemoteDataSource remoteDataSource;
  LocalDataSource? localDataSource;
  Repository({required this.remoteDataSource,this.localDataSource});


  Future<AllBreedsModel> getAllBreeds(String url) async{
    try{
      final response = await remoteDataSource.get<AllBreedsModel,Null>(url);
      return response;
    }catch (e){
        throw Exception(e);
    }
  }

  Future<PictureModel> getBreedPictures(String url) async{
    try{
      final response = await remoteDataSource.get<PictureModel,Null>(url);
      return response;
    }catch (e){
      throw Exception(e);
    }
  }

  bool saveFavourites(List<String> items){
    try{
      final response = localDataSource!.saveFavourites(items);
      return response;
    }catch (e){
      throw Exception(e);
    }
  }

  List<String> loadFavourites(){
    try{
      final response = localDataSource!.loadFavourites();
      return response;
    }catch (e){
      throw Exception(e);
    }
  }

  bool saveBreeds(List<String> items){
    try{
      final response = localDataSource!.saveBreeds(items);
      return response;
    }catch (e){
      throw Exception(e);
    }
  }

  List<String> loadBreeds(){
    try{
      final response = localDataSource!.loadBreeds();
      return response;
    }catch (e){
      throw Exception(e);
    }
  }
}