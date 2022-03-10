import 'package:flutter/cupertino.dart';

import 'cupertino_tabs/form_tab.dart';
import 'cupertino_tabs/modal_tab.dart';
import 'cupertino_tabs/widget_tab.dart';

class CupertinoScreen extends StatelessWidget {
  const CupertinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(
            label: "Widget",
            icon: Icon(CupertinoIcons.settings),
          ),
          BottomNavigationBarItem(
            label: "Modal",
            icon: Icon(CupertinoIcons.collections),
          ),
          BottomNavigationBarItem(
            label: "Form",
            icon: Icon(CupertinoIcons.news),
          )
        ]),
        tabBuilder: (context, index) {
          late final CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(builder: (context) {
                return const WidgetTab();
              });
              break;
            case 1:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: ModalTab(),
                );
              });
              break;
            case 2:
              returnValue = CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(
                  child: FormTab(),
                );
              });
              break;
          }
          return returnValue;
        },
      ),
    );
  }
}
