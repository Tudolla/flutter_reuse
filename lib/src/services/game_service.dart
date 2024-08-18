import 'package:fpdart/fpdart.dart';
import 'package:request_response_flutter/src/services/base_service.dart';

import '../models/game.dart';

class GameService extends BaseService {
  static const basePath = "/game";

  Future<Either<String, List<Game>>> list() async {
    final response = await get(basePath);

    return response.fold(
      (e) => left(e),
      (res) => right(
        res['data']
            .map<Game>(
              (json) => Game.fromJson(json),
            )
            .toList(), // 'data' is map from returned in base_service
      ),
    );
  }

  Future<Either<String, Game>> retrive(String id) async {
    final response = await get("$basePath/$id");

    return response.fold(
      (e) => left(e),
      (res) => right(Game.fromJson(res['data'])),
    );
  }

  Future<Either<String, Game>> _update(String id, Game game) async {
    final response = await patch(
      "$basePath/$id",
      data: game.toJson(),
    );

    return response.fold(
      (e) => left(e),
      (res) => right(Game.fromJson(res['data'])),
    );
  }

  Future<Either<String, Game>> _create(Game game) async {
    final response = await post(
      basePath,
      data: game.toJson(),
    );

    return response.fold(
      (e) => left(e),
      (res) => right(Game.fromJson(res['data'])),
    );
  }

  Future<Either<String, bool>> remove(String id) async {
    final response = await delete(
      "$basePath/$id",
    );

    return response.fold(
      (e) => left(e),
      (res) => right(true),
    );
  }

  Future<Either<String, Game>> save(Game game) async {
    return game.id.isEmpty ? _create(game) : _update(game.id, game);
  }
}
