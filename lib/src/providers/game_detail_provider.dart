import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/game.dart';
import '../services/game_service.dart';

final gameDetailProvider =
    FutureProvider.family<Game?, String>((ref, id) async {
  final results = await GameService().retrive(id);

  return results.fold((error) {
    print(error);
    return null;
  }, (game) => game);
});
