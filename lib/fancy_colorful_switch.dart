import 'package:flutter/material.dart';

/// A customizable switch widget with vibrant colors.
///
/// This widget provides a switch with customizable colors for both active
/// and inactive states. It includes options to set the active color, inactive
/// thumb color, active track color, and inactive track color.
///
/// Example usage:
///
/// ```dart
/// FancyColorfulSwitch(
///   activeColor: Colors.green,
///   inactiveThumbColor: Colors.red,
///   activeTrackColor: Colors.pink,
///   inactiveTrackColor: Colors.grey[300]!,
///   onStateChanged: (value) {
///     print('Switch state changed: $value');
///   },
/// )
/// ```
///
class FancyColorfulSwitch extends StatefulWidget {
  /// The color of the switch when it is in the active (on) state.
  final Color activeColor;

  /// The color of the switch thumb when it is in the inactive (off) state.
  final Color inactiveThumbColor;

  /// The color of the track when the switch is in the active (on) state.
  final Color activeTrackColor;

  /// The color of the track when the switch is in the inactive (off) state.
  final Color inactiveTrackColor;

  /// Callback function that gets triggered when the switch state changes.
  final void Function(bool) onStateChanged;

  /// Creates a customizable switch widget with vibrant colors.
  ///
  /// The [activeColor] parameter specifies the color of the switch when it is
  /// in the active (on) state.
  ///
  /// The [inactiveThumbColor] parameter specifies the color of the switch thumb
  /// when it is in the inactive (off) state.
  ///
  /// The [activeTrackColor] parameter specifies the color of the track when the
  /// switch is in the active (on) state.
  ///
  /// The [inactiveTrackColor] parameter specifies the color of the track when
  /// the switch is in the inactive (off) state.
  ///
  /// The [onStateChanged] callback function gets triggered when the switch state
  /// changes. It receives a boolean value indicating the new state of the switch.
  ///
  const FancyColorfulSwitch({
    Key? key,
    required this.activeColor,
    required this.inactiveThumbColor,
    required this.activeTrackColor,
    required this.inactiveTrackColor,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FancyColorfulSwitch> createState() => _FancyColorfulSwitchState();
}

class _FancyColorfulSwitchState extends State<FancyColorfulSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (value) {
        setState(() {
          _switchValue = value;
          widget.onStateChanged(value); // Invoke the callback function
        });
      },
      activeColor: widget.activeColor,
      inactiveThumbColor: widget.inactiveThumbColor,
      activeTrackColor: widget.activeTrackColor,
      inactiveTrackColor: widget.inactiveTrackColor,
    );
  }
}

