import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/button_model.dart';
import 'package:provider/provider.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ButtonModel>(builder: (context, model, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Button View"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.clear,
                  color: Colors.red,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                items: const [
                  DropdownMenuItem(
                    value: "Apple",
                    child: Text("Apple"),
                  ),
                  DropdownMenuItem(
                    value: "Banana",
                    child: Text("Banana"),
                  ),
                  DropdownMenuItem(
                    value: "Durian",
                    child: Text("Durian"),
                  ),
                ],
                onChanged: (value) {
                  model.dropdownValue = value ?? "apple";
                },
                value: model.dropdownValue,
              ),
              DropdownButtonFormField(
                onChanged: (String? newValue) {
                  model.dropdowmFormField = newValue;
                },
                items: const [
                  DropdownMenuItem(
                    value: "Apple",
                    child: Text("Apple"),
                  ),
                  DropdownMenuItem(
                    value: "Banana",
                    child: Text("Banana"),
                  ),
                  DropdownMenuItem(
                    value: "Durian",
                    child: Text("Durian"),
                  ),
                  DropdownMenuItem(
                    value: "Graple",
                    child: Text("Graple"),
                  ),
                  DropdownMenuItem(
                    value: "Water Melon",
                    child: Text("Water Melon"),
                  ),
                ],
              ),
              Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box,
                      size: 40,
                    )),
              ),
              SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Elevated Button"))),
              SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                    label: const Text("Elevated Button Icon"),
                  )),
              SizedBox(
                  width: double.maxFinite,
                  child: TextButton(
                      onPressed: () {}, child: const Text("Text Button"))),
              SizedBox(
                  width: double.maxFinite,
                  child: TextButton.icon(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                    label: const Text("Text Button Icon"),
                  )),
              SizedBox(
                  width: double.maxFinite,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text("Outlined Button"))),
              SizedBox(
                  width: double.maxFinite,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.account_circle),
                    onPressed: () {},
                    label: const Text("Outlined Button Icon"),
                  )),
              SizedBox(
                  width: double.maxFinite,
                  child: CupertinoButton(
                      color: CupertinoColors.inactiveGray,
                      onPressed: () {},
                      child: const Text("Cupertino Button"))),
              SizedBox(
                  width: double.maxFinite,
                  child: MaterialButton(
                    onPressed: () {},
                    color: CupertinoColors.inactiveGray,
                    shape: const _CustomBorder(),
                    child: const Text("Material Button"),
                  )),
              SizedBox(
                  width: double.maxFinite,
                  child: RawMaterialButton(
                    onPressed: () {},
                    fillColor: CupertinoColors.inactiveGray,
                    shape: const _CustomBorder(),
                    child: const Text("Material Button"),
                  )),
              ToggleButtons(
                borderWidth: 3,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Option 1"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Option 2"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Option 3"),
                  ),
                ],
                onPressed: (int index) {
                  model.setSelectedValue(index, !model.isSelected[index]);
                },
                isSelected: model.isSelected,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.add)),
      );
    });
  }
}

class _CustomBorder extends ShapeBorder {
  const _CustomBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(95, 0.0)
      ..arcToPoint(
        const Offset(110, 0),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(rect.width - 10, 0)
      ..quadraticBezierTo(rect.width, 0.0, rect.width, 10.0)
      ..lineTo(rect.width, rect.height - 10)
      ..quadraticBezierTo(rect.width, rect.height, rect.width - 10, rect.height)
      ..lineTo(0 + 110, rect.height)
      ..arcToPoint(
        Offset(95, rect.height),
        clockwise: false,
        radius: const Radius.circular(1),
      )
      ..lineTo(10.0, rect.height)
      ..quadraticBezierTo(0.0, rect.height, 0.0, rect.height - 10)
      ..lineTo(0.0, 10.0)
      ..quadraticBezierTo(0.0, 0.0, 10.0, 0.0)
      ..close();

    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    throw UnimplementedError();
  }
}
