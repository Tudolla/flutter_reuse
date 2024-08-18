import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/route.dart';
import 'package:request_response_flutter/src/components/game_list.dart';

@RoutePage()
class GameListScreen extends StatelessWidget {
  const GameListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Game"),
      ),
      body: GameLists(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(GameFormRoute());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
