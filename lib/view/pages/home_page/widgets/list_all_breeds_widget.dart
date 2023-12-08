import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
import 'package:task/data/data_sources/local/local_data_source.dart';
import 'package:task/data/data_sources/remote/remote_data_source.dart';
import 'package:task/data/models/all_breeds_model.dart';
import 'package:task/repository/repository.dart';
import 'package:task/view/pages/breed_pictures_page/breed_pictures_page.dart';

class ListAllBreedsWidget extends StatelessWidget {
  ListAllBreedsWidget({super.key,required this.item}){
    apiProvider = GetIt.instance<ApiProvider>();
  }
  ApiProvider? apiProvider;
  AllBreedsModel item;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount: item.mapMessage!.length,itemBuilder: (BuildContext context, int index){
      List values = (item.mapMessage!.entries.elementAt(index).value).toList();
      return
        values.isNotEmpty?
        ExpansionTile(
          title: Text(item.mapMessage!.keys.elementAt(index),style: const TextStyle(fontWeight: FontWeight.bold)),
        // leading:  Text( values.length.toString()),
        children: [
          Column(
            children: _buildExpandableContent(values),
          )
        ],
      ):
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BreedPicturesPage(),settings: RouteSettings(arguments: item.mapMessage!.keys.elementAt(index))),
            ).then((value) {
              print(value);
              apiProvider!.saveFavourites(value);
            });
          },
          child: ListTile(
              // leading: Text( values.length.toString()),
              title:Text(item.mapMessage!.keys.elementAt(index),style: const TextStyle(fontWeight: FontWeight.bold))
          ),
        );

    },);
  }

  _buildExpandableContent(List values) {
    List<Widget> columnContent = [];
    for (String content in values) {
      columnContent.add(
        ListTile(
          title: Text(content, style: TextStyle(fontSize: 12.0),),
        ),
      );
    }
    return columnContent;
  }

}
