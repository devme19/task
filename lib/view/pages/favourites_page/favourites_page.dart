import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
class FavouritesPage extends StatefulWidget {
  List<String> likedItems=[];
  List<String> breeds=[];

  FavouritesPage({super.key}){
    final apiProvider = GetIt.instance<ApiProvider>();
    likedItems = apiProvider.loadFavourites();
    breeds = apiProvider.loadBreeds();
  }

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  String selectedBreed="Select breed to filter";
  List<String> filteredItems=[];
  bool isFilter = false;
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text("Favourites"),
          actions: [
            Text(selectedBreed),
            IconButton(onPressed: (){
              _modalBottomSheetMenu(context);
            }, icon: Icon(Icons.filter_alt))
          ],
        ),
        body:
        body()
      );
  }
  Widget body(){
    if(isFilter){
      if(filteredItems.isEmpty)
        {
          return  const Center(child: Text("There is no item"),);
        }
    }
    if(widget.likedItems.isEmpty) {
      return const Center(child: Text("There is no item"),);
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, // number of items in each row
        mainAxisSpacing: 8.0, // spacing between rows
        crossAxisSpacing: 8.0,
        childAspectRatio:0.5,
      ),
      // padding: const EdgeInsets.all(8.0), // padding around the grid
      itemCount:filteredItems.isNotEmpty?filteredItems.length: widget.likedItems.length, // total number of items
      itemBuilder: (context, index) {
        return
          Column(
            children: [
              Expanded(
                child: CachedNetworkImage(
                  imageUrl:filteredItems.isNotEmpty?filteredItems[index]: widget.likedItems[index],
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 30,)
            ],
          );
      },
    );
  }

  void _modalBottomSheetMenu(context){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return Container(
            height: double.infinity,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child:ListView.builder(
              itemCount: widget.breeds.length,
              itemBuilder: (BuildContext context, int index) {
                return
                  ListTile(
                    onTap: (){
                      filteredItems.clear();
                      isFilter = true;
                      selectedBreed = widget.breeds[index];
                      for(String item in widget.likedItems){
                        if(item.contains(selectedBreed)){
                          filteredItems.add(item);
                        }
                      }
                      setState(() {
                      });
                      Navigator.pop(context);
                    },
                  title: Text(widget.breeds[index]),
                );
              },
            )
          );
        }
    );
  }
}
