import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../modules/models/cupertino_form.dart';

class CupertinoPickTime extends StatelessWidget {
  final String type;
  const CupertinoPickTime({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return Container(
                height: 216,
                padding: const EdgeInsets.only(top: 6),
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                color: CupertinoColors.systemBackground.resolveFrom(context),
                child: DefaultTextStyle(
                    style: TextStyle(
                        color: CupertinoColors.label.resolveFrom(context),
                        fontSize: 22),
                    child: GestureDetector(
                      onTap: () {},
                      child: SafeArea(
                        top: false,
                        child: Consumer<CupertinoFormModel>(
                          builder: (context, formModel, child) {
                            return type == "timer"
                                ? CupertinoTimerPicker(
                                    backgroundColor: CupertinoColors
                                        .systemBackground
                                        .resolveFrom(context),
                                    initialTimerDuration: formModel.timeDetail,
                                    onTimerDurationChanged: (newDateTime) {
                                      formModel.timeDetail = newDateTime;
                                    },
                                  )
                                : CupertinoDatePicker(
                                    backgroundColor: CupertinoColors
                                        .systemBackground
                                        .resolveFrom(context),
                                    mode: type == "date"
                                        ? CupertinoDatePickerMode.date
                                        : type == "time"
                                            ? CupertinoDatePickerMode.time
                                            : CupertinoDatePickerMode
                                                .dateAndTime,
                                    onDateTimeChanged: (newDateTime) {
                                      type == "date"
                                          ? formModel.dates = newDateTime
                                          : type == "time"
                                              ? formModel.time = newDateTime
                                              : formModel.dateTime =
                                                  newDateTime;
                                    },
                                  );
                          },
                        ),
                      ),
                    )),
              );
            });
      },
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: CupertinoColors.inactiveGray, width: 0),
            bottom: BorderSide(color: CupertinoColors.inactiveGray, width: 0),
          ),
        ),
        height: 44,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            type == "date"
                ? const Text("Pick Date")
                : type == "time"
                    ? const Text("Pick Time")
                    : type == "timer"
                        ? const Text("Pick Time")
                        : const Text("Pick Date Time"),
            Consumer<CupertinoFormModel>(
              builder: (context, formModel, child) {
                return type == "timer"
                    ? Text(
                        "${formModel.timeDetail.inHours}:"
                        "${(formModel.timeDetail.inMinutes % 60).toString().padLeft(2, '0')}:"
                        "${(formModel.timeDetail.inSeconds % 60).toString().padLeft(2, '0')}",
                        style: const TextStyle(
                            color: CupertinoColors.inactiveGray),
                      )
                    : Text(
                        type == "date"
                            ? DateFormat.yMMMMd().format(formModel.dates)
                            : type == "time"
                                ? DateFormat.jm().format(formModel.time)
                                : DateFormat.yMMMd()
                                    .add_jm()
                                    .format(formModel.dateTime),
                        style: const TextStyle(
                            color: CupertinoColors.inactiveGray),
                      );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
