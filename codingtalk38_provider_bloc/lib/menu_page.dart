import 'package:codingtalk38_provider_bloc/ui/home_page.dart';
import 'package:codingtalk38_provider_bloc/ui/page_ui_bloc.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Menu Page'),
      ),

      body: Column(
        children: [
          MaterialButton(
            child: Text('Provider'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
            color: Colors.green,
            textColor: Colors.white,
          ),

          MaterialButton(
            child: Text('Bloc'),
            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageHomeBloc()));
            },
            color: Colors.green,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
