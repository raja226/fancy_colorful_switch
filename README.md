# Fancy Colorful Switch

Fancy Colorful Switch package lets you add a beautiful Switch to your Flutter app.

## Installation 

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
```yaml
dependencies:
  fancy_colorful_switch: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:fancy_colorful_switch/fancy_colorful_switch.dart';
```

## Example
There are a number of properties that you can modify:

 - activeColor 
 - inactiveThumbColor         
 - activeTrackColor 
 - textColor
 - inactiveTrackColor
 - onStateChanged)(its the call back function).

<hr>

<table>
<tr>
<td>

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example App"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: FancyColorfulSwitch(
          activeColor: Colors.green,
          inactiveThumbColor: Colors.red,
          activeTrackColor: Colors.pink,
          inactiveTrackColor: Colors.grey[300]!,
          onStateChanged: (value) {
            print('Switch state changed: $value');
          },
        ),
      ),
    );
  }
}

```

</td>
<td>
<\td>
</tr>
</table>

## Usage
```dart
FancyColorfulSwitch(
          activeColor: Colors.green,
          inactiveThumbColor: Colors.red,
          activeTrackColor: Colors.pink,
          inactiveTrackColor: Colors.grey[300]!,
          onStateChanged: (value) {
            print('Switch state changed: $value');
          },
        );
```
## Next Goals
 - [ ] Add more  functionality to the package.
## Developer Info
If you need any information related to Flutter packages or updates, please contact the email below:

Email: iosrajasekhar@example.com

