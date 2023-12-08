import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task/api_provider.dart';
import 'package:task/data/data_sources/local/local_data_source.dart';
import 'package:task/data/data_sources/remote/remote_data_source.dart';
import 'package:task/repository/repository.dart';
import 'view/pages/home_page/home_page.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<RemoteDataSource>(RemoteDataSourceImpl());
  getIt.registerSingleton<LocalDataSource>(LocalDataSourceImpl());
  getIt.registerFactory<Repository>(
        () => Repository(remoteDataSource: getIt<RemoteDataSource>(),localDataSource: getIt<LocalDataSource>()),
  );
  getIt.registerFactory<ApiProvider>(
        () => ApiProvider(repository: getIt<Repository>()),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      );
  }
}

