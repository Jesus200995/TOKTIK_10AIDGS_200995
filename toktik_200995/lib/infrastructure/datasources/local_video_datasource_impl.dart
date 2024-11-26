import 'package:toktik_200995/domain/datasources/video_posts_datasource.dart';
import 'package:toktik_200995/domain/entities/video_post.dart';
import 'package:toktik_200995/infrastructure/models/local_video_model.dart';
import 'package:toktik_200995/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    
    await Future.delayed( const Duration(seconds: 2) );

     final List<VideoPost> newVideos = videoPosts.map( 
      ( video ) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    ).toList();

    return newVideos;
  }

}

