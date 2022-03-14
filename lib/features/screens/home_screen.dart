import 'package:flutter/material.dart';
import 'package:gallery_app/widgets/home_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Widget"),
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.person, color: Colors.blue),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(1),
                  primary: Colors.white, // <-- Button color
                  onPrimary: Colors.red, // <-- Splash color
                ),
              ))
        ],
      ),
      body: ListView(
        children: const [
          HomeItem(
              title: "Cuperterio",
              subtitle:
                  "Beautiful and high-fidelity widgets for current IOS design language",
              routeName: "/CupertinoScreen",
              iconData: Icons.phone_iphone),
          HomeItem(
            title: "Typography",
            subtitle: "All of the predefined text styles",
            routeName: "/RichTextScreen",
            iconData: Icons.text_fields,
          ),
          HomeItem(
              title: "Bottom app bar",
              subtitle: "Bottom application bar",
              routeName: "/BottomAppbarScreen",
              iconData: Icons.menu),
          HomeItem(
              title: "Button",
              subtitle:
                  "ElevatedButton, TextButton, OutlinedButton, CupertinoButton, "
                  "Dropdown",
              routeName: "/ButtonScreen",
              iconData: Icons.web),
          HomeItem(
              title: "List",
              subtitle: "Scrolling list layout",
              routeName: "routeName",
              iconData: Icons.format_list_bulleted),
          HomeItem(
              title: "Card",
              subtitle: "Cards with rounded corners and decoration",
              routeName: "/CustomBoxScreen",
              iconData: Icons.chrome_reader_mode),
          HomeItem(
              title: "List Tile",
              subtitle:
                  "A single fixed-height row that typically contains some text as well as a leading or trailling icon",
              routeName: "routeName",
              iconData: Icons.format_list_bulleted),
          HomeItem(
              title: "Alert",
              subtitle: "Alerts, SnackBar & Tooltip",
              routeName: "routeName",
              iconData: Icons.tab_unselected),
          HomeItem(
              title: "Text Field",
              subtitle: "Text Field, Text Field Form",
              routeName: "routeName",
              iconData: Icons.menu),
          HomeItem(
              title: "Row & Column",
              subtitle:
                  "A widget that displays its children in a horizontal and vertical array",
              routeName: "/RowColumnScreen",
              iconData: Icons.graphic_eq),
          HomeItem(
              title: "Wrap & Chip",
              subtitle: "Wrap & Chip",
              routeName: "/WrapChipScreen",
              iconData: Icons.edit_attributes),
          HomeItem(
              title: "Stack & Align",
              subtitle:
                  "A widget that positions its children relative to the edges of its box",
              routeName: "/StackAlignScreen",
              iconData: Icons.content_copy),
          HomeItem(
              title: "Container",
              subtitle:
                  "A convenience widget that combines common painting, positioning, and sizing widgets.",
              routeName: "/ContainerScreen",
              iconData: Icons.check_box_outline_blank),
          HomeItem(
              title: "Other",
              subtitle: "Sliders, Indicators, Selections",
              routeName: "/ImageAppbarScreen",
              iconData: Icons.donut_large),
        ],
      ),
    );
  }
}
