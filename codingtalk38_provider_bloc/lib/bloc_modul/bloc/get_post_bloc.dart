import 'package:codingtalk38_provider_bloc/bloc_modul/bloc/get_post_event.dart';
import 'package:codingtalk38_provider_bloc/bloc_modul/bloc/get_post_state.dart';
import 'package:codingtalk38_provider_bloc/model/res_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class GetPostBloc extends Bloc<GetPostEvent, GetPostState>{

  GetPostBloc(GetPostState initialState) : super(initialState);

  @override
  Stream <GetPostState> mapEventToState(GetPostEvent event)async*{
    //async biasa buat biasa
    //async* untuk stream

    if(event is EventGetPost){
      //yield seperti return
      yield GetPostLoading();
      try{
        var url = '';
        http.Response response = await http.get(url);
        List<ResPost> listPost = resPostFromJson(response.body);
        yield GetPostSuccess(listPost);

      }catch (e){
        yield GetPostError(e.toString());
      }

    }

  }

}