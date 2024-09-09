import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  final String text;
  final bool switch1;
  const SwitchButton({Key? key, required this.switch1, required this.text}) : super(key: key);

  @override
  _SwitchButton createState() => _SwitchButton();
}

class _SwitchButton extends State<SwitchButton> {
  late bool switchState;

  @override
  void initState() {
    super.initState();
    switchState = widget.switch1;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),
        ),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Switch(
            value: switchState,
            onChanged: (value) {
              setState(() {
                switchState = value;
              });
            },
            activeTrackColor: Theme.of(context).colorScheme.primary,
            activeColor: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
