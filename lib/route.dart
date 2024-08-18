import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/auto_route/home_route_page.dart';
import 'package:request_response_flutter/auto_route/setting_page.dart';
import 'package:request_response_flutter/src/screens/game_detail_screen.dart';
import 'package:request_response_flutter/src/screens/game_form_screen.dart';
import 'package:request_response_flutter/src/screens/game_list_screen.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: GameListRoute.page, initial: true),
        AutoRoute(page: HomeRouteRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: GameDetailRoute.page),
        AutoRoute(page: GameFormRoute.page),
      ];
}
