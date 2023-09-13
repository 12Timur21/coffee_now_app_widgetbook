import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [
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
          name: 'Container',
          useCases: [
            WidgetbookUseCase(
              name: 'with green color',
              builder: (context) => Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
