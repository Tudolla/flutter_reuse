import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  const Game._();

  factory Game({
    @JsonKey(includeToJson: false) required String id,
    @JsonKey(name: "createdAt", includeToJson: false)
    required DateTime createdAt,
    required String name,
    required String console,
    @JsonKey(name: "release", includeToJson: false) required int release,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  factory Game.empty() {
    return Game(
      id: '',
      console: '',
      release: 0,
      createdAt: DateTime.now(),
      name: '',
    );
  }
}
