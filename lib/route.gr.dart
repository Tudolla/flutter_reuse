// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GameDetailRoute.name: (routeData) {
      final args = routeData.argsAs<GameDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: GameDetailScreen(
          key: args.key,
          gameId: args.gameId,
        ),
      );
    },
    GameFormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GameFormScreen(),
      );
    },
    GameListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GameListScreen(),
      );
    },
    HomeRouteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePageRoute(),
      );
    },
    SettingRoute.name: (routeData) {
      final args = routeData.argsAs<SettingRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };
}

/// generated route for
/// [GameDetailScreen]
class GameDetailRoute extends PageRouteInfo<GameDetailRouteArgs> {
  GameDetailRoute({
    Key? key,
    required String gameId,
    List<PageRouteInfo>? children,
  }) : super(
          GameDetailRoute.name,
          args: GameDetailRouteArgs(
            key: key,
            gameId: gameId,
          ),
          initialChildren: children,
        );

  static const String name = 'GameDetailRoute';

  static const PageInfo<GameDetailRouteArgs> page =
      PageInfo<GameDetailRouteArgs>(name);
}

class GameDetailRouteArgs {
  const GameDetailRouteArgs({
    this.key,
    required this.gameId,
  });

  final Key? key;

  final String gameId;

  @override
  String toString() {
    return 'GameDetailRouteArgs{key: $key, gameId: $gameId}';
  }
}

/// generated route for
/// [GameFormScreen]
class GameFormRoute extends PageRouteInfo<void> {
  const GameFormRoute({List<PageRouteInfo>? children})
      : super(
          GameFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameFormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GameListScreen]
class GameListRoute extends PageRouteInfo<void> {
  const GameListRoute({List<PageRouteInfo>? children})
      : super(
          GameListRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePageRoute]
class HomeRouteRoute extends PageRouteInfo<void> {
  const HomeRouteRoute({List<PageRouteInfo>? children})
      : super(
          HomeRouteRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<SettingRouteArgs> {
  SettingRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          SettingRoute.name,
          args: SettingRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<SettingRouteArgs> page =
      PageInfo<SettingRouteArgs>(name);
}

class SettingRouteArgs {
  const SettingRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key, title: $title}';
  }
}
