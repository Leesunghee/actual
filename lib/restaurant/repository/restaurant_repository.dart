import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../model/restaurant_detail_model.dart';

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository {
  // http://$ip/restaurant
  factory RestaurantRepository(Dio dio, {String baseUrl}) =
  _RestaurantRepository;

  // http://$ip/restaurant
  // @GET('/')
  // paginate();

  // http://$ip/restaurant/:id
  @GET('/{id}')
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}