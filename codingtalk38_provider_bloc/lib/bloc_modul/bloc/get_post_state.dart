import 'package:codingtalk38_provider_bloc/model/res_post.dart';
import 'package:equatable/equatable.dart';

abstract class GetPostState extends Equatable{

  @override
  List<Object> get props => [];
}

class GetPostLoading extends GetPostState{}

class GetPostInitial extends GetPostState{}

class GetPostError extends GetPostState{

  final String message;
  GetPostError(this.message);

  @override
  List<Object> get props => super.props..add(message);

}

class GetPostSuccess extends GetPostState{

  final List<ResPost> listPost;

  GetPostSuccess(this.listPost);

  @override
  List<Object> get props => super.props..add(listPost);
}