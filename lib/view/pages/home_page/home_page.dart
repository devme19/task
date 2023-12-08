import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
import 'package:task/data/models/all_breeds_model.dart';
import 'package:task/view/pages/favourites_page/favourites_page.dart';
import 'package:task/view/pages/home_page/widgets/list_all_breeds_widget.dart';
class MyHomePage extends StatelessWidget {
  final apiProvider = GetIt.instance<ApiProvider>();
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Task"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouritesPage(),));
          },
          child:  Image.asset( 'assets/images/like.png',width: 30,),
        ),
        body:FutureBuilder<AllBreedsModel>(
          future: apiProvider.getAllBreeds(),
          builder:  (BuildContext context, AsyncSnapshot<AllBreedsModel> snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const Center(child: CircularProgressIndicator(),);
            }
            else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            else {
              return ListAllBreedsWidget(item: snapshot.data!,);
            }
          },
        )
    );
  }
}

