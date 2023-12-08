import 'package:task/data/models/all_breeds_model.dart';
import 'package:task/data/models/picture_model.dart';

class Generics {
  static T fromJson<T,K>(dynamic json) {
    if (json is Iterable) {
      return _fromJsonList<K>(json as List) as T;
    }
    else
    if (T == AllBreedsModel) {
      return AllBreedsModel.fromJson(json) as T;
    }
    else
    if (T == PictureModel) {
      return PictureModel.fromJson(json) as T;
    }
    else
    {
      throw Exception("Unknown class");
    }

  }
  static List<K>? _fromJsonList<K>(List jsonList) {
    if (jsonList == null) {
      return null;
    }

    List<K> output = [];

    for (Map<String, dynamic> json in jsonList) {
      output.add(fromJson(json));
    }
    return output;
  }
}