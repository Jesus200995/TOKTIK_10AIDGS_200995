import 'package:toktik_200995/domain/entities/video_post.dart';



abstract class VideoPostRepository {

  Future<List<VideoPost>> getFavoriteVideosByUser( String userID );

  Future<List<VideoPost>> getTrendingVideosByPage( int page );


}