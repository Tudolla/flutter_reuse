import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_response_flutter/src/providers/game_detail_provider.dart';

@RoutePage()
class GameDetailScreen extends ConsumerWidget {
  final String gameId;
  const GameDetailScreen({
    super.key,
    required this.gameId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(
      gameDetailProvider(gameId),
    );
    return Scaffold(
      appBar: data.when(
        data: (game) => AppBar(
          title: Text(game?.name ?? ""),
        ),
        error: (e, _) => AppBar(
          title: Text("Error"),
        ),
        loading: () => AppBar(),
      ),
      body: Center(
        child: data.when(
          data: (game) {
            if (game == null) {
              return Center(
                child: Text("Nothing"),
              );
            } else {
              return Text(game.name);
            }
          },
          error: (e, _) => Center(
            child: Text(
              e.toString(),
            ),
          ),
          loading: () => Center(child: const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
