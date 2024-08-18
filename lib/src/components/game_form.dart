import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:request_response_flutter/src/providers/game_form_provider.dart';

class GameForm extends ConsumerWidget {
  const GameForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formProvider = ref.read(gameFormProvider.notifier);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Form(
              key: formProvider.formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) => formProvider.validateInputName(value),
                    controller: formProvider.nameController,
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  TextFormField(
                    validator: (value) =>
                        formProvider.validateInputDescription(value),
                    controller: formProvider.consoleController,
                    decoration: InputDecoration(hintText: "Description"),
                  ),
                  TextFormField(
                    validator: (value) =>
                        formProvider.validateInputRelease(value),
                    controller: formProvider.releaseController,
                    decoration: InputDecoration(hintText: "Release"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.router.back();
                        },
                        child: Text(
                          "Cancel",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final res = await formProvider.submit();
                          res.fold((e) => print(e), (newGame) {
                            Navigator.of(context).pop();
                            print(newGame);
                          });
                        },
                        child: Text(
                          "Save",
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
