import 'package:toktik_200995/domain/entities/video_post.dart';



abstract class VideoPostDatasource {

  Future<List<VideoPost>> getFavoriteVideosByUser( String userID );

  Future<List<VideoPost>> getTrendingVideosByPage( int page );


}