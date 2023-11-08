## Column Widgeti

dikey bir düzen oluşturmak için kullanılır. Bu widget, diğer widgetlerin dikey olarak sıralanmasına izin verir. Column widgeti, sınırlı alanı olan bir uygulama düzeninde kullanışlıdır.

Column widgeti, aşağıdaki özelliklere sahiptir:

**children**: List<Widget> tipinde bir liste alır. Bu liste, Column widgeti içinde görüntülenecek widget’ların listesidir.
**mainAxisAlignment**: Dikey eksen boyunca widget’ların hizalanma yöntemini belirler. Varsayılan olarak, mainAxisAlignment özelliği MainAxisAlignment.start olarak ayarlanır.
**crossAxisAlignment**: Yatay eksen boyunca widget’ların hizalanma yöntemini belirler. Varsayılan olarak, crossAxisAlignment özelliği CrossAxisAlignment.center olarak ayarlanır.
**mainAxisSize**: Dikey eksen boyunca Column widgetinin boyutunu belirler. Varsayılan olarak, mainAxisSize özelliği MainAxisSize.max olarak ayarlanır.
**textDirection**: Widget’ların yazı yönünü belirler. Varsayılan olarak, textDirection özelliği TextDirection.ltr olarak ayarlanır.
**verticalDirection**: Dikey eksen boyunca widget’ların sıralanma yönünü belirler. Varsayılan olarak, verticalDirection özelliği VerticalDirection.down olarak ayarlanır.

## The Column widget

is used to create a vertical layout. This widget allows other widgets to be arranged vertically. The Column widget is useful in an application layout with limited space.

The Column widget has the following properties:

**children**: A list of widgets to be displayed inside the Column widget.
**mainAxisAlignment**: Determines how widgets are aligned along the vertical axis. By default, the mainAxisAlignment property is set to MainAxisAlignment.start.
**crossAxisAlignment**: Determines how widgets are aligned along the horizontal axis. By default, the crossAxisAlignment property is set to CrossAxisAlignment.center.
**mainAxisSize**: Determines the size of the Column widget along the vertical axis. By default, the mainAxisSize property is set to MainAxisSize.max.
**textDirection**: Determines the writing direction of the widgets. By default, the textDirection property is set to TextDirection.ltr.
**verticalDirection**: Determines the direction of the widgets along the vertical axis. By default, the verticalDirection property is set to VerticalDirection.down.

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.min,
  textDirection: TextDirection.ltr,
  verticalDirection: VerticalDirection.down,
  children: <Widget>[
    Text(
      'Merhaba',
      style: TextStyle(fontSize: 20),
    ),
    Text(
      'Dünya',
      style: TextStyle(fontSize: 20),
    ),
    Image.asset(
      'assets/images/example.png',
      fit: BoxFit.cover,
    ),
  ],
)


Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.min,
  textDirection: TextDirection.ltr,
  verticalDirection: VerticalDirection.down,
  children: <Widget>[
    Text(
      'Hello',
      style: TextStyle(fontSize: 20),
    ),
    Text(
      'World',
      style: TextStyle(fontSize: 20),
    ),
    Image.asset(
      'assets/images/example.png',
      fit: BoxFit.cover,
    ),
  ],
)
```
