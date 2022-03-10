import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/stack_align.dart';
import 'package:gallery_app/widgets/button_dropdown.dart';
import 'package:provider/provider.dart';
import 'dart:ui' as ui;

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<StackAlignModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Stack & Align"),
          ),
          body: Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 300,
                height: 400,
                child: Stack(
                  alignment: model.alignmentDirectional,
                  clipBehavior: model.clip,
                  fit: model.stackFit,
                  textDirection: model.textDirection
                      ? ui.TextDirection.ltr
                      : ui.TextDirection.rtl,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      height: 150,
                      width: 150,
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              )),
          bottomNavigationBar: BottomAppBar(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonDropdown(
                  title: "Alignment",
                  child: DropdownButton<AlignmentDirectional>(
                    items: const [
                      DropdownMenuItem(
                        value: AlignmentDirectional.topStart,
                        child: Text("topStart"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.topEnd,
                        child: Text("topEnd"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.topCenter,
                        child: Text("topCenter"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.centerStart,
                        child: Text("centerStart"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.centerEnd,
                        child: Text("centerEnd"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.center,
                        child: Text("center"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.bottomStart,
                        child: Text("bottomStart"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.bottomEnd,
                        child: Text("bottomEnd"),
                      ),
                      DropdownMenuItem(
                        value: AlignmentDirectional.bottomCenter,
                        child: Text("bottomCenter"),
                      ),
                    ],
                    onChanged: (value) {
                      model.alignmentDirectional =
                          value ?? AlignmentDirectional.center;
                    },
                    value: model.alignmentDirectional,
                  )),
              ButtonDropdown(
                  title: "TextDirection",
                  child: DropdownButton<bool>(
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
              ButtonDropdown(
                  title: "StackFit",
                  child: DropdownButton<StackFit>(
                    items: const [
                      DropdownMenuItem(
                        value: StackFit.loose,
                        child: Text("loose"),
                      ),
                      DropdownMenuItem(
                        value: StackFit.expand,
                        child: Text("expand"),
                      ),
                      DropdownMenuItem(
                        value: StackFit.passthrough,
                        child: Text("passthrough"),
                      ),
                    ],
                    onChanged: (value) {
                      model.stackFit = value;
                    },
                    value: model.stackFit,
                  )),
              ButtonDropdown(
                  title: "Clip",
                  child: DropdownButton<Clip>(
                    items: const [
                      DropdownMenuItem(
                        value: Clip.antiAlias,
                        child: Text("antiAlias"),
                      ),
                      DropdownMenuItem(
                        value: Clip.antiAliasWithSaveLayer,
                        child: Text("antiAliasWithSaveLayer"),
                      ),
                      DropdownMenuItem(
                        value: Clip.hardEdge,
                        child: Text("hardEdge"),
                      ),
                      DropdownMenuItem(
                        value: Clip.none,
                        child: Text("none"),
                      ),
                    ],
                    onChanged: (value) {
                      model.clip = value;
                    },
                    value: model.clip,
                  )),
            ],
          )),
        );
      },
    );
  }
}
