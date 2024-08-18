import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_response_flutter/src/services/game_service.dart';

import '../models/game.dart';

class GameListProivder extends StateNotifier<List<Game>> {
  GameListProivder() : super([]) {
    loadGames();
  }

  Future<void> loadGames() async {
    final response = await GameService().list();

    response.fold((error) => print(error), (games) {
      state = games;
    });
  }
}

final gameListProvider =
    StateNotifierProvider<GameListProivder, List<Game>>((ref) {
  return GameListProivder();
});
