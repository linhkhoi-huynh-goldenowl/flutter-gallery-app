import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/cupertino_switch.dart';
import 'package:gallery_app/features/provider/cupertino_slider_provider.dart';
import 'package:gallery_app/utils/ui/app_label.dart';
import 'package:provider/provider.dart';

class WidgetTab extends StatefulWidget {
  const WidgetTab({Key? key}) : super(key: key);

  @override
  State<WidgetTab> createState() => _WidgetTabState();
}

class _WidgetTabState extends State<WidgetTab> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Widget"),
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1))
                ..then<void>((_) {});
            },
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Pull to refresh",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            const AppLabel(title: "Indicator"),
            const CupertinoActivityIndicator(),
            const AppLabel(title: "Button"),
            Center(
                child: CupertinoButton(
                    child: const Text("Button"), onPressed: () {})),
            Center(
              child: CupertinoButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: const Text('With Background'),
              ),
            ),
            const AppLabel(title: "Slider"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Consumer<CupertinoSliderProvider>(
                builder: (context, sliders, child) {
                  return CupertinoSlider(
                    onChanged: (newRating) {
                      sliders.setValue1(newRating);
                    },
                    value: sliders.sliders[0].value,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Consumer<CupertinoSliderProvider>(
                builder: (context, sliders, child) {
                  return CupertinoSlider(
                    divisions: 10,
                    onChanged: (newRating) {
                      sliders.setValue2(newRating);
                    },
                    value: sliders.sliders[1].value,
                  );
                },
              ),
            ),
            const AppLabel(title: "Switch"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoSwitch(value: false, onChanged: (tap) {}),
                Consumer<CupertinoSwitchModel>(
                  builder: (context, switchModel, child) {
                    return CupertinoSwitch(
                        value: switchModel.valueSwitch,
                        onChanged: (tap) {
                          switchModel.valueSwitch = tap;
                        });
                  },
                ),
              ],
            )
          ]))
        ],
      ),
    );
  }
}
