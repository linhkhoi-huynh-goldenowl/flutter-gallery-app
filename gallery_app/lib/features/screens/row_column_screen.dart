import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/row_column.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final children = [
      const Icon(
        Icons.brightness_auto,
        size: 32,
      ),
      const Icon(
        Icons.brightness_auto,
        size: 72,
      ),
      const Icon(
        Icons.brightness_auto,
        size: 32,
      )
    ];

    return Consumer<RowColumnModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Row & Column"),
          ),
          body: Container(
            color: Colors.yellow,
            child: model.chooseRow
                ? Row(
                    mainAxisSize: model.mainAxisSize,
                    mainAxisAlignment: model.mainAxisAlignment,
                    crossAxisAlignment: model.crossAxisAlignment,
                    textBaseline: model.textBaseline,
                    textDirection: model.textDirection
                        ? ui.TextDirection.ltr
                        : ui.TextDirection.rtl,
                    verticalDirection: model.verticalDirection,
                    children: children,
                  )
                : Column(
                    mainAxisSize: model.mainAxisSize,
                    mainAxisAlignment: model.mainAxisAlignment,
                    crossAxisAlignment: model.crossAxisAlignment,
                    textBaseline: model.textBaseline,
                    textDirection: model.textDirection
                        ? ui.TextDirection.ltr
                        : ui.TextDirection.rtl,
                    verticalDirection: model.verticalDirection,
                    children: children,
                  ),
          ),
          bottomNavigationBar: BottomAppBar(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 50,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: RadioListTile(
                    value: true,
                    groupValue: model.chooseRow,
                    onChanged: (value) {
                      model.chooseRow = true;
                    },
                    title: const Text("Row"),
                  )),
                  Expanded(
                      child: RadioListTile(
                    value: false,
                    groupValue: model.chooseRow,
                    onChanged: (value) {
                      model.chooseRow = false;
                    },
                    title: const Text("Column"),
                  ))
                ]),
              ),
              itemButton(
                  "mainAxisSize",
                  DropdownButton<MainAxisSize>(
                    items: const [
                      DropdownMenuItem(
                        value: MainAxisSize.max,
                        child: Text("max"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisSize.min,
                        child: Text("min"),
                      ),
                    ],
                    onChanged: (value) {
                      model.mainAxisSize = value;
                    },
                    value: model.mainAxisSize,
                  )),
              itemButton(
                  "mainAxisAlignment",
                  DropdownButton<MainAxisAlignment>(
                    items: const [
                      DropdownMenuItem(
                        value: MainAxisAlignment.start,
                        child: Text("start"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisAlignment.end,
                        child: Text("end"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisAlignment.center,
                        child: Text("center"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisAlignment.spaceAround,
                        child: Text("spaceAround"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisAlignment.spaceBetween,
                        child: Text("spaceBetween"),
                      ),
                      DropdownMenuItem(
                        value: MainAxisAlignment.spaceEvenly,
                        child: Text("spaceEvenly"),
                      ),
                    ],
                    onChanged: (value) {
                      model.mainAxisAlignment = value;
                    },
                    value: model.mainAxisAlignment,
                  )),
              itemButton(
                  "crossAxisAlignment",
                  DropdownButton<CrossAxisAlignment>(
                    items: const [
                      DropdownMenuItem(
                        value: CrossAxisAlignment.start,
                        child: Text("start"),
                      ),
                      DropdownMenuItem(
                        value: CrossAxisAlignment.end,
                        child: Text("end"),
                      ),
                      DropdownMenuItem(
                        value: CrossAxisAlignment.center,
                        child: Text("center"),
                      ),
                      DropdownMenuItem(
                        value: CrossAxisAlignment.stretch,
                        child: Text("stretch"),
                      ),
                      DropdownMenuItem(
                        value: CrossAxisAlignment.baseline,
                        child: Text("baseline"),
                      ),
                    ],
                    onChanged: (value) {
                      model.crossAxisAlignment = value;
                    },
                    value: model.crossAxisAlignment,
                  )),
              itemButton(
                  "verticalDirection",
                  DropdownButton<VerticalDirection>(
                    items: const [
                      DropdownMenuItem(
                        value: VerticalDirection.up,
                        child: Text("start"),
                      ),
                      DropdownMenuItem(
                        value: VerticalDirection.down,
                        child: Text("end"),
                      ),
                    ],
                    onChanged: (value) {
                      model.verticalDirection = value;
                    },
                    value: model.verticalDirection,
                  )),
              itemButton(
                  "textDirection",
                  DropdownButton<bool>(
                    items: const [
                      DropdownMenuItem(
                        value: true,
                        child: Text("ltr"),
                      ),
                      DropdownMenuItem(
                        value: false,
                        child: Text("rtl"),
                      ),
                    ],
                    onChanged: (value) {
                      model.textDirection = value;
                    },
                    value: model.textDirection,
                  )),
              itemButton(
                  "textBaseline",
                  DropdownButton<TextBaseline>(
                    items: const [
                      DropdownMenuItem(
                        value: TextBaseline.alphabetic,
                        child: Text("alphabetic"),
                      ),
                      DropdownMenuItem(
                        value: TextBaseline.ideographic,
                        child: Text("ideographic"),
                      ),
                    ],
                    onChanged: (value) {
                      model.textBaseline = value;
                    },
                    value: model.textBaseline,
                  )),
            ],
          )),
        );
      },
    );
  }

  Widget itemButton(String title, Widget child) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: const TextStyle(color: Colors.black),
          )),
          child
        ],
      ),
    );
  }
}
