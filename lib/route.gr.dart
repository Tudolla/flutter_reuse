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
