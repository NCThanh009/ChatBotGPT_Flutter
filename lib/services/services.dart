import 'package:flutter/material.dart';
import 'package:flutter_application_chatgpt/widgets/drop_down.dart';

import '../constants/constants.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModelSheet({required BuildContext context}) async {
    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      backgroundColor: scaffolBGColor,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Flexible(
                child: TextWidget(
                  label: "Select Model",
                  fontSize: 16,
                ),
              ),
              Flexible(
                child: ModelsDrowDownWidget(),
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
