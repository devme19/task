import 'dart:convert';

import 'package:get_storage/get_storage.dart';

abstract class LocalDataSource{
  bool saveFavourites(List<String> items);
  List<String> loadFavourites();
  List<String> loadBreeds();
  bool saveBreeds(List<String> breeds);
}

class LocalDataSourceImpl implements LocalDataSource{
  GetStorage? box;
  LocalDataSourceImpl(){
    box = GetStorage();
  }
  @override
  bool saveFavourites(List<String> items) {
    try{
      box!.write("Favourites", json.encode(items));
      return true;
    }catch (e){
      return false;
    }
  }

  @override
  List<String> loadFavourites() {
   if(box!.read("Favourites")!=null)
     {
       List<String> favourites =(jsonDecode(box!.read("Favourites")) as List<dynamic>).cast<String>();
       return favourites;
     }
   return [];
  }

  @override
  bool saveBreeds(List<String> breeds) {
    try{
      box!.write("Breeds", json.encode(breeds));
      return true;
    }catch (e){
      return false;
    }
  }

  @override
  List<String> loadBreeds() {
    if(box!.read("Breeds")!=null)
    {
      List<String> breeds =(jsonDecode(box!.read("Breeds")) as List<dynamic>).cast<String>();
      return breeds;
    }
    return [];
  }

}