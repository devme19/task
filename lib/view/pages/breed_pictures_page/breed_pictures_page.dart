import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
import 'package:task/data/models/picture_model.dart';
import 'package:task/view/pages/breed_pictures_page/widgets/show_breed_pictures_widget.dart';

class BreedPicturesPage extends StatelessWidget {
  BreedPicturesPage({super.key}){
    apiProvider = GetIt.instance<ApiProvider>();
  }
  List<String> likedItems=[];
  ApiProvider? apiProvider;
  @override
  Widget build(BuildContext context) {
    final  args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
      title: Text('Pictures of $args'),
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: (){
            Navigator.pop(context, likedItems);
          },
        ),
      ),
      body:FutureBuilder<PictureModel>(
        future: apiProvider!.getBreedPictures(args.toString()),
        builder:  (BuildContext context, AsyncSnapshot<PictureModel> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          else {
            return ShowBreedPicturesWidget(items: snapshot.data!.message!,likedItemsCallBack: getLikedImages,);
          }
        },
      )
    );
  }
  getLikedImages(List<String> items){
    likedItems = items;
  }
}


