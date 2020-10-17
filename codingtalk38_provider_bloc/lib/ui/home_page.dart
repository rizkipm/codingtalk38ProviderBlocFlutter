import 'package:codingtalk38_provider_bloc/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),

      body: ChangeNotifierProvider(
        create: (BuildContext context) => PostProvider(),//mengambil data dari page post provider
        child: Consumer<PostProvider>(
          builder: (BuildContext context, value, Widget child){
            if(value.loading){//proses loading
              return Center(
                child: CircularProgressIndicator(

                ),
              );
            }

            return ListView.builder(itemCount : value.toString().length,
                itemBuilder: (context, index){
                return ListTile(
                  title: Text(value.listPost[index].title),
                  subtitle: Text(value.listPost[index].body),
                );
            });
          }
        ),
      ),
    );
  }
}

