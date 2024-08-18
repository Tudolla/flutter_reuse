import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/route.dart';
import 'package:request_response_flutter/src/models/game.dart';
import 'package:request_response_flutter/src/screens/game_detail_screen.dart';

class GameListTile extends StatelessWidget {
  const GameListTile({
    super.key,
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          game.name,
          style: TextStyle(color: Colors.black),
        ),
        trailing: Text(game.console),
        onTap: () {
          context.router.push(
            GameDetailRoute(gameId: game.id),
          );
        },
      ),
    );
  }
}
