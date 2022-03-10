import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/container_model.dart';
import 'package:gallery_app/widgets/button_dropdown.dart';
import 'package:provider/provider.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ContainerModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Container View"),
          ),
          body: Center(
              child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              backgroundBlendMode: model.blendMode ?? BlendMode.color,
              color: Colors.blue,
              border: model.hasBoder
                  ? Border.all(color: Colors.blue, width: 5)
                  : null,
              shape: model.chooseRadius == 3
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              borderRadius:
                  model.chooseRadius == 2 ? BorderRadius.circular(50) : null,
              boxShadow: model.isShadow
                  ? [
                      BoxShadow(
                        color: Colors.yellow.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      )
                    ]
                  : [],
              gradient: model.chooseBackground == 3
                  ? const RadialGradient(colors: [Colors.blue, Colors.red])
                  : model.chooseBackground == 4
                      ? const LinearGradient(colors: [Colors.blue, Colors.red])
                      : model.chooseBackground == 5
                          ? const SweepGradient(
                              colors: [Colors.blue, Colors.red])
                          : null,
              image: model.chooseBackground == 2
                  ? const DecorationImage(
                      image: AssetImage("assets/images/pikachu.jpg"),
                      fit: BoxFit.cover)
                  : null,
            ),
          )),
          bottomNavigationBar: BottomAppBar(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ButtonDropdown(
                  title: "Border",
                  child: Switch(
                    value: model.hasBoder,
                    onChanged: (value) {
                      model.hasBoder = value;
                    },
                  )),
              ButtonDropdown(
                  title: "BorderRadius",
                  child: DropdownButton<int>(
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text("None"),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text("Rounded"),
                      ),
                      DropdownMenuItem(
                        value: 3,
                        child: Text("Circle"),
                      ),
                    ],
                    onChanged: (value) {
                      model.chooseRadius = value;
                    },
                    value: model.chooseRadius,
                  )),
              ButtonDropdown(
                  title: "BoxShadow",
                  child: Switch(
                    value: model.isShadow,
                    onChanged: (value) {
                      model.isShadow = value;
                    },
                  )),
              ButtonDropdown(
                  title: "Background",
                  child: DropdownButton<int>(
                    items: const [
                      DropdownMenuItem(
                        value: 1,
                        child: Text("color"),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text("image"),
                      ),
                      DropdownMenuItem(
                        value: 3,
                        child: Text("radialGradient"),
                      ),
                      DropdownMenuItem(
                        value: 4,
                        child: Text("linearGradient"),
                      ),
                      DropdownMenuItem(
                        value: 5,
                        child: Text("sweepGradient"),
                      ),
                    ],
                    onChanged: (value) {
                      model.chooseBackground = value;
                    },
                    value: model.chooseBackground,
                  )),
              ButtonDropdown(
                  title: "BlendMode",
                  child: DropdownButton<BlendMode>(
                    items: const [
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.clear,
                        child: Text("clear"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.color,
                        child: Text("color"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.colorBurn,
                        child: Text("colorBurn"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.colorDodge,
                        child: Text("colorDodge"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.darken,
                        child: Text("darken"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.difference,
                        child: Text("difference"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.dst,
                        child: Text("dst"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.dstATop,
                        child: Text("dstATop"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.dstIn,
                        child: Text("dstIn"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.dstOut,
                        child: Text("dstOut"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.dstOver,
                        child: Text("dstOver"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.exclusion,
                        child: Text("exclusion"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.hardLight,
                        child: Text("hardLight"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.hue,
                        child: Text("hue"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.lighten,
                        child: Text("lighten"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.luminosity,
                        child: Text("luminosity"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.modulate,
                        child: Text("modulate"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.multiply,
                        child: Text("multiply"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.overlay,
                        child: Text("overlay"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.plus,
                        child: Text("plus"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.saturation,
                        child: Text("saturation"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.screen,
                        child: Text("screen"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.softLight,
                        child: Text("softLight"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.src,
                        child: Text("src"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.srcATop,
                        child: Text("srcATop"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.srcIn,
                        child: Text("srcIn"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.srcOut,
                        child: Text("srcOut"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.srcOver,
                        child: Text("srcOver"),
                      ),
                      DropdownMenuItem<BlendMode>(
                        value: BlendMode.xor,
                        child: Text("xor"),
                      )
                    ],
                    onChanged: (value) {
                      model.blendMode = value;
                    },
                    value: model.blendMode,
                  )),
            ],
          )),
        );
      },
    );
  }
}
