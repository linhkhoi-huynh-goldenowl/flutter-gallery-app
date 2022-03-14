import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/wrap_chip.dart';
import 'package:gallery_app/utils/ui/app_label.dart';
import 'package:provider/provider.dart';

class WrapChipScreen extends StatelessWidget {
  const WrapChipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WrapChipModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Wrap view"),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const AppLabel(title: "Chip Chip"),
              Wrap(
                spacing: model.isSpacing ? 20 : 0,
                runSpacing: model.runSpacing ? 10 : 0,
                children: [
                  Chip(
                      onDeleted: model.hasDeleteIcon ? () {} : null,
                      label: const Text("Chip"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      avatar: model.hasAvatar
                          ? const CircleAvatar(
                              child: Icon(
                                Icons.perm_identity,
                                size: 16,
                              ),
                            )
                          : null),
                  ActionChip(
                      onPressed: () {},
                      label: const Text("ActionChip"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      avatar: model.hasAvatar
                          ? const CircleAvatar(
                              child: Icon(
                                Icons.perm_identity,
                                size: 16,
                              ),
                            )
                          : null),
                  RawChip(
                      onDeleted: model.hasDeleteIcon ? () {} : null,
                      label: const Text("RawChip"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      avatar: model.hasAvatar
                          ? const CircleAvatar(
                              child: Icon(
                                Icons.perm_identity,
                                size: 16,
                              ),
                            )
                          : null),
                ],
              ),
              const AppLabel(title: "Choice Chip"),
              Wrap(
                spacing: model.isSpacing ? 20 : 0,
                runSpacing: model.runSpacing ? 10 : 0,
                children: [
                  ChoiceChip(
                    label: const Text("Disable"),
                    elevation: model.isElevation ? 5 : 0,
                    shape: model.shapeBorder,
                    avatar: model.hasAvatar
                        ? const CircleAvatar(
                            child: Icon(
                              Icons.perm_identity,
                              size: 16,
                            ),
                          )
                        : null,
                    selected: false,
                  ),
                  ChoiceChip(
                    label: const Text("Small"),
                    elevation: model.isElevation ? 5 : 0,
                    shape: model.shapeBorder,
                    avatar: model.hasAvatar
                        ? const CircleAvatar(
                            child: Icon(
                              Icons.perm_identity,
                              size: 16,
                            ),
                          )
                        : null,
                    selected: model.choose == 1,
                    onSelected: (value) {
                      model.choose = value ? 1 : 0;
                    },
                  ),
                  ChoiceChip(
                    label: const Text("Large"),
                    elevation: model.isElevation ? 5 : 0,
                    shape: model.shapeBorder,
                    avatar: model.hasAvatar
                        ? const CircleAvatar(
                            child: Icon(
                              Icons.perm_identity,
                              size: 16,
                            ),
                          )
                        : null,
                    selected: model.choose == 2,
                    onSelected: (value) {
                      model.choose = value ? 2 : 0;
                    },
                  ),
                ],
              ),
              const AppLabel(title: "Input Chip"),
              Wrap(
                  spacing: model.isSpacing ? 20 : 0,
                  runSpacing: model.runSpacing ? 10 : 0,
                  children: [
                    InputChip(
                      label: const Text("Disable"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      selected: false,
                      onDeleted: model.hasDeleteIcon ? () {} : null,
                    ),
                    InputChip(
                      label: const Text("IOS"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      selected: model.chooseIOS,
                      onPressed: () {
                        model.chooseIOS = !model.chooseIOS;
                      },
                      onDeleted: model.hasDeleteIcon ? () {} : null,
                    ),
                    InputChip(
                      label: const Text("Android"),
                      elevation: model.isElevation ? 5 : 0,
                      shape: model.shapeBorder,
                      selected: model.chooseAndroid,
                      onPressed: () {
                        model.chooseAndroid = !model.chooseAndroid;
                      },
                      onDeleted: model.hasDeleteIcon ? () {} : null,
                    ),
                  ])
            ],
          ),
          bottomNavigationBar: BottomAppBar(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SwitchListTile(
                      title: const Text("elevation"),
                      value: model.isElevation,
                      onChanged: (value) {
                        model.isElevation = value;
                      },
                    ),
                  ),
                  Expanded(
                    child: SwitchListTile(
                      title: const Text("avatar"),
                      value: model.hasAvatar,
                      onChanged: (value) {
                        model.hasAvatar = value;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SwitchListTile(
                      title: const Text("deleteIcon"),
                      value: model.hasDeleteIcon,
                      onChanged: (value) {
                        model.hasDeleteIcon = value;
                      },
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButton<OutlinedBorder>(
                      items: [
                        const DropdownMenuItem(
                          value: StadiumBorder(),
                          child: Text("Stadium"),
                        ),
                        DropdownMenuItem(
                          value: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: const Text("BeveledRectangle"),
                        ),
                        const DropdownMenuItem(
                          value: RoundedRectangleBorder(),
                          child: Text("RoundedRectangle"),
                        ),
                      ],
                      onChanged: (value) {
                        model.shapeBorder = value ?? const StadiumBorder();
                      },
                      value: model.shapeBorder,
                    ),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SwitchListTile(
                      title: const Text("spacing"),
                      value: model.isSpacing,
                      onChanged: (value) {
                        model.isSpacing = value;
                      },
                    ),
                  ),
                  Expanded(
                    child: SwitchListTile(
                      title: const Text("runSpacing"),
                      value: model.runSpacing,
                      onChanged: (value) {
                        model.runSpacing = value;
                      },
                    ),
                  ),
                ],
              ),
            ],
          )),
        );
      },
    );
  }
}
