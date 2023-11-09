## Flutter’da şart blokları

belirli bir koşulu karşıladığında bir widget’ın görüntülenmesini sağlar. Şart blokları, if, else if ve else ifadelerini kullanarak oluşturulur.

Aşağıdaki örnek, bir Text widget’ının bir koşulu karşıladığında görüntülenmesini sağlar:

```dart
if (condition) {
  Text('Koşul doğru');
} else {
  Text('Koşul yanlış');
}
```

Birden fazla koşul için, else if ifadesi kullanılabilir:

```dart
if (condition1) {
  Text('Koşul 1 doğru');
} else if (condition2) {
  Text('Koşul 2 doğru');
} else {
  Text('Koşullar yanlış');
}
```

Şart blokları, widget ağacında belirli bir koşula bağlı olarak widget’ların görüntülenmesini sağlar. Bu, uygulamanızda belirli bir duruma bağlı olarak farklı widget’ların görüntülenmesini sağlamak için kullanışlıdır.

Aşağıdaki örnek, Column widgeti içinde bir Text widget’ını bir koşula bağlı olarak görüntüler:

```dart
class ExampleWidget extends StatefulWidget {
  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  bool _showText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (_showText)
          Text('Koşul doğru'),
        RaisedButton(
          child: Text('Değiştir'),
          onPressed: () {
            setState(() {
              _showText = !_showText;
            });
          },
        ),
      ],
    );
  }
}

```

## In Flutter, conditional statements allow a widget

to be displayed when a certain condition is met. Conditional statements are created using if, else if, and else statements.

The following example shows how to display a Text widget when a condition is met:

```dart
if (condition) {
  Text('Condition is true');
} else {
  Text('Condition is false');
}
```

For multiple conditions, the else if statement can be used:

```dart
if (condition1) {
  Text('Condition 1 is true');
} else if (condition2) {
  Text('Condition 2 is true');
} else {
  Text('Conditions are false');
}
```

Conditional statements allow widgets to be displayed in the widget tree based on a certain condition. This is useful for displaying different widgets based on a certain state in your application.

The following example shows how to display a Text widget inside a Column widget based on a condition:

```dart
class ExampleWidget extends StatefulWidget {
  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  bool _showText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (_showText)
          Text('Condition is true'),
        RaisedButton(
          child: Text('Toggle'),
          onPressed: () {
            setState(() {
              _showText = !_showText;
            });
          },
        ),
      ],
    );
  }
}
```
