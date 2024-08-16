import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:request_response_flutter/route.dart';

@RoutePage()
class HomePageRoute extends StatefulWidget {
  const HomePageRoute({super.key});

  @override
  State<HomePageRoute> createState() => _HomePageRouteState();
}

class _HomePageRouteState extends State<HomePageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Pham Kieu Van is cute"),
              ElevatedButton(
                onPressed: () {
                  context.router.push(SettingRoute(title: "Kieu Van is cute"));
                },
                child: Text("Push to Setting"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
