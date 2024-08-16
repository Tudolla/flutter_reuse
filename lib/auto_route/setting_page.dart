import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingPage extends StatefulWidget {
  final String title;
  const SettingPage({
    super.key,
    required this.title,
  });

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("Setting"),
              ElevatedButton(
                onPressed: () {
                  context.router.back();
                },
                child: Text("Back"),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(widget.title),
            ],
          ),
        ),
      ),
    );
  }
}
