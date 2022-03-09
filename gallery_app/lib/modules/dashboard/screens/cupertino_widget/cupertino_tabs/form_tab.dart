import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/modules/models/cupertino_form.dart';
import 'package:gallery_app/utils/ui/app_label.dart';
import 'package:gallery_app/widgets/cupertino_pick_time.dart';
import 'package:provider/provider.dart';

class FormTab extends StatefulWidget {
  const FormTab({Key? key}) : super(key: key);

  @override
  State<FormTab> createState() => _FormTabState();
}

class _FormTabState extends State<FormTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Form"),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const AppLabel(title: "Pickers"),
            const CupertinoPickTime(type: "date"),
            const CupertinoPickTime(type: "time"),
            const CupertinoPickTime(type: "datetime"),
            const CupertinoPickTime(type: "timer"),
            const AppLabel(title: "Text fields"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: CupertinoTextField(placeholder: "Email"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: CupertinoTextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  placeholder: "Password"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: CupertinoTextField(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  prefix: Icon(
                    CupertinoIcons.padlock,
                    color: Colors.grey,
                  ),
                  placeholder: "PIN"),
            ),
            const AppLabel(title: "Segmented controls"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Consumer<CupertinoFormModel>(
                builder: (context, formModel, child) {
                  return CupertinoSegmentedControl(
                      groupValue: formModel.segment,
                      children: const {
                        0: Text("Apple"),
                        1: Text("Orange"),
                        2: Text("Lemon"),
                      },
                      onValueChanged: (value) {
                        formModel.segment = value;
                      });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Consumer<CupertinoFormModel>(
                builder: (context, formModel, child) {
                  return CupertinoSlidingSegmentedControl(
                      groupValue: formModel.segment,
                      children: const {
                        0: Text("Apple"),
                        1: Text("Orange"),
                        2: Text("Lemon"),
                      },
                      onValueChanged: (value) {
                        formModel.segment = value;
                      });
                },
              ),
            )
          ]))
        ],
      ),
    );
  }
}
