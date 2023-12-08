import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
typedef LikedItemsCallBack = void Function(List<String> callBack);
class ShowBreedPicturesWidget extends StatefulWidget {

  ShowBreedPicturesWidget({super.key,required this.items,required this.likedItemsCallBack});
  List<String> items;
  final LikedItemsCallBack likedItemsCallBack;
  @override
  State<ShowBreedPicturesWidget> createState() => _ShowBreedPicturesWidgetState();
}

class _ShowBreedPicturesWidgetState extends State<ShowBreedPicturesWidget> {
  List<String> likedItems=[];


  @override
  void initState() {
    super.initState();
    final apiProvider = GetIt.instance<ApiProvider>();
    likedItems = apiProvider.loadFavourites();
    widget.likedItemsCallBack(likedItems);
  }

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // number of items in each row
        mainAxisSpacing: 8.0, // spacing between rows
        crossAxisSpacing: 8.0,
        childAspectRatio:0.5,
      ),
      // padding: const EdgeInsets.all(8.0), // padding around the grid
      itemCount: widget.items.length, // total number of items
      itemBuilder: (context, index) {
        return
         GestureDetector(
           onDoubleTap: (){
             if(!likedItems.contains( widget.items[index])){
               likedItems.add( widget.items[index]);
               widget.likedItemsCallBack(likedItems);
               setState(() {
               });
             }
           },
           child: Column(
             children: [
               Expanded(
                 child: CachedNetworkImage(
                   imageUrl: widget.items[index],
                   fit: BoxFit.cover,
                   placeholder: (context, url) => Container(),
                   errorWidget: (context, url, error) => const Icon(Icons.error),
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                       onTap: (){
                         if(likedItems.contains( widget.items[index])){
                           likedItems.remove( widget.items[index]);
                         }else{
                           likedItems.add( widget.items[index]);
                         }
                         widget.likedItemsCallBack(likedItems);
                         setState(() {
                         });
                       },
                       child: Image.asset( likedItems.contains( widget.items[index])?'assets/images/like.png':'assets/images/unlike.png',width: 50,)),
                 ],
               ),
               const SizedBox(height: 30,)
             ],
           ),
         );
      },
    );
  }
}
