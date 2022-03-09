import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalTab extends StatefulWidget {
  const ModalTab({Key? key}) : super(key: key);

  @override
  State<ModalTab> createState() => _ModalTabState();
}

class _ModalTabState extends State<ModalTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Alerts"),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 16,
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Message Preview"),
                        actions: [
                          CupertinoDialogAction(
                              child: const Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Alert',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Message Preview"),
                        content: const Text("This is a content"),
                        actions: [
                          CupertinoDialogAction(
                              child: const Text("Yes"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("No"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Alert with title',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text("Message Preview"),
                        content: const Text("This is a content"),
                        actions: [
                          CupertinoDialogAction(
                              child: const Text("Apple"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Orange"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Banana"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Water Melon"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Alert with buttons',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        actions: [
                          CupertinoDialogAction(
                              child: const Text("Apple"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Orange"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Banana"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text("Water Melon"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          CupertinoDialogAction(
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'Alert buttons only',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: CupertinoButton(
                onPressed: () {
                  showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return CupertinoActionSheet(
                            title: const Text('Message Preview'),
                            message: const Text('This is a content'),
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: const Text('Apple'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Orange'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Banana'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Water Melon'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                            cancelButton: CupertinoActionSheetAction(
                              child: const Text(
                                "Cancel",
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ));
                      });
                },
                child: Text(
                  'Action sheet',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 19),
                ),
              ),
            ),
            Center(
              child: CupertinoContextMenu(
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: const Text('Action one'),
                      onPressed: () {},
                    ),
                    CupertinoContextMenuAction(
                      child: const Text('Action two'),
                      onPressed: () {},
                    ),
                  ],
                  child: Material(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: const Text(
                        "Context menu",
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration:
                          BoxDecoration(color: Theme.of(context).primaryColor),
                    ),
                  )),
            )
          ]))
        ],
      ),
    );
  }
}
