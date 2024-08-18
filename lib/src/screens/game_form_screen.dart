import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/src/components/game_form.dart';

@RoutePage()
class GameFormScreen extends StatefulWidget {
  const GameFormScreen({super.key});

  @override
  State<GameFormScreen> createState() => _GameFormScreenState();
}

class _GameFormScreenState extends State<GameFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameForm(),
    );
  }
}
