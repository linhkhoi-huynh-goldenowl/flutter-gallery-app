import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/bottom_appbar.dart';
import 'package:gallery_app/widgets/button_dropdown.dart';
import 'package:provider/provider.dart';

class BottomAppbarScreen extends StatelessWidget {
  const BottomAppbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomAppbarModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Bottom App Bar View"),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonDropdown(
                  title: "Float Action Button",
                  child: Switch(
                    value: model.floatButton,
                    onChanged: (value) {
                      model.floatButton = value;
                    },
                  )),
              ButtonDropdown(
                  title: "Notch",
                  child: Switch(
                    value: model.notch,
                    onChanged: (value) {
                      model.notch = value;
                    },
                  )),
              const Divider(
                height: 16,
              ),
              Column(
                children: [
                  RadioListTile(
                    value: FloatingActionButtonLocation.endDocked,
                    groupValue: model.floatingActionButtonLocation,
                    onChanged: (value) {
                      model.floatingActionButtonLocation = value;
                    },
                    title: const Text("Docked - End"),
                  ),
                  RadioListTile(
                    value: FloatingActionButtonLocation.centerDocked,
                    groupValue: model.floatingActionButtonLocation,
                    onChanged: (value) {
                      model.floatingActionButtonLocation = value;
                    },
                    title: const Text("Docked - Center"),
                  ),
                  RadioListTile(
                    value: FloatingActionButtonLocation.endFloat,
                    groupValue: model.floatingActionButtonLocation,
                    onChanged: (value) {
                      model.floatingActionButtonLocation = value;
                    },
                    title: const Text("Floating - End"),
                  ),
                  RadioListTile(
                    value: FloatingActionButtonLocation.centerFloat,
                    groupValue: model.floatingActionButtonLocation,
                    onChanged: (value) {
                      model.floatingActionButtonLocation = value;
                    },
                    title: const Text("Docked - Center"),
                  ),
                ],
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            shape: model.notch ? CircularNotchedRectangle() : null,
            child: Row(children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            ]),
          ),
          floatingActionButton: model.floatButton
              ? FloatingActionButton(
                  onPressed: () {}, child: const Icon(Icons.add))
              : null,
          floatingActionButtonLocation: model.floatingActionButtonLocation,
        );
      },
    );
  }
}
