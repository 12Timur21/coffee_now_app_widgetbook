import 'dart:io';

import 'package:coffee_now_app_widgetbook/src/components/auth_component.dart';
import 'package:coffee_now_app_widgetbook/src/widgets/buttons/buttons_assembly.dart';
import 'package:coffee_now_app_widgetbook/src/widgets/text_fields_assembly.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
        if(!Platform.isAndroid && !Platform.isIOS)
        DeviceFrameAddon(
          devices: [
            ...Devices.android.all,
            ...Devices.ios.all,
            ...Devices.macOS.all,
            ...Devices.linux.all,
            ...Devices.windows.all,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
      ],
      directories: [
        WidgetbookComponent(
          name: 'Widgets',
          useCases: [
            WidgetbookUseCase(
              name: 'Text Fields',
              builder: (context) => const TextFieldsAssembly(),
            ),
            WidgetbookUseCase(
              name: 'Buttons',
              builder: (context) => const ButtonsAssembly(),
            ),
          ],
        ),
        WidgetbookComponent(
          name: 'Components',
          useCases: [
            WidgetbookUseCase(
              name: 'Auth component',
              builder: (context) => const AuthComponent(),
            ),
          ],
        ),
      ],
    );
  }
}
