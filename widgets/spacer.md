# `Spacer` Widget: Pratik Bir Araç ile Boşluk Eklemek

Flutter'daki `Spacer` widgeti, kullanıcı arayüzünde öğeler arasına esnek bir boşluk eklemek için kullanılır. Bu widget, özellikle `Row` ve `Column` gibi düzenleyici widget'larla birlikte kullanıldığında çok işe yarar. `Spacer`, öğeler arasında boşluğu otomatik olarak dağıtır ve ekstra alanı dengeler.

`Spacer` widgeti, öğeleri eşit olarak bölmek veya belirli bir oranla ayırmak istediğinizde faydalıdır. Örneğin, bir yatay veya dikey düzen içinde öğeleri eşit aralıklarla yerleştirmek veya bazı öğeler arasında daha fazla boşluk bırakmak için kullanılabilir.

## Örnek Kullanım

### Kullanımı `Row` İçinde

```dart
Row(
  children: <Widget>[
    Text('Sol Öğe'),
    Spacer(),
    Text('Orta Öğe'),
    Spacer(flex: 2), // Orta öğe ile sağ öğe arasında 2 kat daha fazla boşluk
    Text('Sağ Öğe'),
  ],
)
````
### Kullanımı `Column` İçinde
````dart
Column(
  children: <Widget>[
    Text('Üst Öğe'),
    Spacer(),
    Text('Orta Öğe'),
    Spacer(flex: 3), // Orta öğe ile alt öğe arasında 3 kat daha fazla boşluk
    Text('Alt Öğe'),
  ],
)
````

# `Spacer` Widget: Adding Flexible Spacing with Ease

The `Spacer` widget in Flutter is used to add flexible spacing between elements in a user interface. This widget is particularly useful when used with layout widgets like `Row` and `Column`. The `Spacer` automatically distributes space between elements and balances extra space.

The `Spacer` widget is helpful when you want to divide elements equally or separate them with a specific ratio. For example, you can use it to place elements with equal spacing in a horizontal or vertical layout or to create more space between certain elements.

## Example Usage

### Usage Inside a `Row`

```dart
Row(
  children: <Widget>[
    Text('Left Item'),
    Spacer(),
    Text('Center Item'),
    Spacer(flex: 2), // 2 times more space between center and right items
    Text('Right Item'),
  ],
)
````
Usage Inside a `Column`
````dart
Column(
  children: <Widget>[
    Text('Top Item'),
    Spacer(),
    Text('Center Item'),
    Spacer(flex: 3), // 3 times more space between center and bottom items
    Text('Bottom Item'),
  ],
)
````
