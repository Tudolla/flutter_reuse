import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/auto_route/home_route_page.dart';
import 'package:request_response_flutter/auto_route/setting_page.dart';
part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRouteRoute.page, initial: true),
        AutoRoute(page: SettingRoute.page),
      ];
}
