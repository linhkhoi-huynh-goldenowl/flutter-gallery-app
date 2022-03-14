import 'package:flutter/material.dart';
import 'package:gallery_app/features/models/text_field_model.dart';
import 'package:provider/provider.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TextFieldModel>(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(title: const Text("Form View")),
          bottomNavigationBar: BottomAppBar(
              child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: model.hintText ? "Hint text" : null,
                    labelText: model.labelText ? "Label text" : null,
                    helperText: model.helpText ? "Help text" : null,
                    errorText: model.errorText ? "Error text" : null,
                    counterText: model.counterText ? "Counter text" : null,
                    prefix: model.prefix ? const Text("Prefix") : null,
                    suffix: model.suffix ? const Text("Suffix") : null,
                    prefixIcon: model.prefixIcon
                        ? const Icon(Icons.access_alarm)
                        : null,
                    suffixIcon: model.suffixIcon
                        ? IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close))
                        : null,
                    isDense: model.isDense,
                    alignLabelWithHint: model.alignLabelWithHint,
                    filled: model.filled,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: model.hintText ? "Hint text" : null,
                      labelText: model.labelText ? "Label text" : null,
                      helperText: model.helpText ? "Help text" : null,
                      errorText: model.errorText ? "Error text" : null,
                      counterText: model.counterText ? "Counter text" : null,
                      prefix: model.prefix ? const Text("Prefix") : null,
                      suffix: model.suffix ? const Text("Suffix") : null,
                      prefixIcon: model.prefixIcon
                          ? const Icon(Icons.access_alarm)
                          : null,
                      suffixIcon: model.suffixIcon
                          ? IconButton(
                              onPressed: () {}, icon: const Icon(Icons.close))
                          : null,
                      isDense: model.isDense,
                      alignLabelWithHint: model.alignLabelWithHint,
                      filled: model.filled,
                      border: const OutlineInputBorder()),
                )
              ],
            ),
          )),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              SwitchListTile(
                  title: const Text("Hint text"),
                  value: model.hintText,
                  onChanged: (value) {
                    model.hintText = value;
                  }),
              SwitchListTile(
                  title: const Text("Label text"),
                  value: model.labelText,
                  onChanged: (value) {
                    model.labelText = value;
                  }),
              SwitchListTile(
                  title: const Text("Help text"),
                  value: model.helpText,
                  onChanged: (value) {
                    model.helpText = value;
                  }),
              SwitchListTile(
                  title: const Text("Error text"),
                  value: model.errorText,
                  onChanged: (value) {
                    model.errorText = value;
                  }),
              SwitchListTile(
                  title: const Text("Counter text"),
                  value: model.counterText,
                  onChanged: (value) {
                    model.counterText = value;
                  }),
              SwitchListTile(
                  title: const Text("Prefix"),
                  value: model.prefix,
                  onChanged: (value) {
                    model.prefix = value;
                  }),
              SwitchListTile(
                  title: const Text("Suffix"),
                  value: model.suffix,
                  onChanged: (value) {
                    model.suffix = value;
                  }),
              SwitchListTile(
                  title: const Text("Prefix Icon"),
                  value: model.prefixIcon,
                  onChanged: (value) {
                    model.prefixIcon = value;
                  }),
              SwitchListTile(
                  title: const Text("Suffix Icon"),
                  value: model.suffixIcon,
                  onChanged: (value) {
                    model.suffixIcon = value;
                  }),
              SwitchListTile(
                  title: const Text("Is Dense"),
                  value: model.isDense,
                  onChanged: (value) {
                    model.isDense = value;
                  }),
              SwitchListTile(
                  title: const Text("Filled"),
                  value: model.filled,
                  onChanged: (value) {
                    model.filled = value;
                  }),
              SwitchListTile(
                  title: const Text("Align Label With Hint"),
                  value: model.alignLabelWithHint,
                  onChanged: (value) {
                    model.alignLabelWithHint = value;
                  }),
            ],
          ),
        );
      },
    );
  }
}
