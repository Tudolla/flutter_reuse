import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_response_flutter/src/components/game_list_tile.dart';
import 'package:request_response_flutter/src/providers/game_list_provider.dart';

class GameLists extends ConsumerWidget {
  const GameLists({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gameListProvider);
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index) {
        final game = games[index];
        return GameListTile(game: game);
      },
    );
  }
}
