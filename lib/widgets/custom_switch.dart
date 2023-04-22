import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:joo_s_application3/core/app_export.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({required this.value, required this.onChanged});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _value = false;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged(_value);
      },
      child: Container(
        width: 40.0,
        height: 20.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: _value ? null : 0.0,
              right: _value ? 0.0 : null,
              bottom: -3,
              child: Container(
                width: 25.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.orangeAccent,
                ),
              ),
            ),
          ],
          clipBehavior: Clip.none,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: _value ? Colors.orangeAccent[100] : Colors.grey[400],
        ),
      ),
    );
  }
}
