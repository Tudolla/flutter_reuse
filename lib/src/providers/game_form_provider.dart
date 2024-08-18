import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:request_response_flutter/src/models/game.dart';
import 'package:request_response_flutter/src/providers/game_detail_provider.dart';
import 'package:request_response_flutter/src/providers/game_list_provider.dart';
import 'package:request_response_flutter/src/services/game_service.dart';

class GameFormProvider extends StateNotifier<Game> {
  final Ref ref;
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController consoleController = TextEditingController();

  final TextEditingController releaseController = TextEditingController();

  GameFormProvider(this.ref, Game initialState) : super(initialState) {
    updateController();
    nameController.addListener(() {
      state = state.copyWith(name: nameController.text);
    });

    consoleController.addListener(() {
      state = state.copyWith(console: consoleController.text);
    });

    releaseController.addListener(() {
      state = state.copyWith(release: int.parse(releaseController.text));
    });
  }

  load(Game game) {
    state = game;
    updateController();
  }

  clear() {
    state = Game.empty();
    updateController();
  }

  updateController() {
    nameController.text = state.name;
    consoleController.text = state.console;
    releaseController.text = state.release == 0 ? '' : state.release.toString();
  }

  String? validateInputName(String? value) {
    if (value == null || value.isEmpty) {
      return "Required input";
    }
    return null;
  }

  String? validateInputDescription(String? value) {
    if (value == null || value.isEmpty) {
      return "Required input";
    }
    return null;
  }

  String? validateInputRelease(String? value) {
    if (value == null) {
      return "Required input";
    }
    return null;
  }

  Future<Either<String?, Game>> submit() async {
    // print(state);
    if (!formKey.currentState!.validate()) {
      return left(null);
    }

    final result = await GameService().save(state);
    return result.fold((e) => left(e), (game) {
      clear();
      ref.invalidate(gameListProvider);
      ref.invalidate(
        gameDetailProvider(game.id),
      );

      return right(game);
    });
  }
}

final gameFormProvider = StateNotifierProvider<GameFormProvider, Game>((ref) {
  return GameFormProvider(ref, Game.empty());
});
