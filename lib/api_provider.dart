import 'package:task/data/models/all_breeds_model.dart';
import 'package:task/data/models/picture_model.dart';
import 'package:task/repository/repository.dart';

class ApiProvider{
  Repository? repository;
  List<String> breeds=[];
  ApiProvider({required this.repository});

  Future<AllBreedsModel> getAllBreeds() async {
   try{
     AllBreedsModel allBreeds = await repository!.getAllBreeds("https://dog.ceo/api/breeds/list/all");
     for(String item in allBreeds.mapMessage!.keys){
       breeds.add(item);
     }
     repository!.saveBreeds(breeds);
     return allBreeds;
   }catch (e){
     throw Exception('Failed to load data');
   }
  }

  Future<PictureModel> getBreedPictures(String breed) async {
    try{
      return await repository!.getBreedPictures("https://dog.ceo/api/breed/$breed/images");
    }catch (e){
      throw Exception('Failed to load data');
    }
  }

  saveFavourites(List<String> items){
    try{
      return  repository!.saveFavourites(items);
    }catch (e){
      throw Exception('Failed to save data');
    }
  }

  List<String> loadFavourites(){
    try{
      return  repository!.loadFavourites();
    }catch (e){
      throw Exception('Failed to load data');
    }
  }

  List<String> loadBreeds(){
    try{
      return  repository!.loadBreeds();
    }catch (e){
      throw Exception('Failed to load data');
    }
  }
}