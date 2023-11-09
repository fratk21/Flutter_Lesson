## Row Widget: Yatay Düzenleme

`Row` widgeti, Flutter'da yatay düzenlemeyi yönetmek için kullanılır. `Row` içindeki çocuk widgetleri yatay bir çizgide sıralar. Yani, çocuk widgetler yatay eksende yan yana yerleştirilir.

### Temel Kullanım

`Row` widgetini kullanırken, `children` özelliğini kullanarak içinde bulunacak widgetleri belirtirsiniz. İşte temel kullanımı:

```dart
Row(
  children: [
    // Yatayda sıralanacak widgetler burada tanımlanır.
  ],
)
````

Ana Özellikler

mainAxisAlignment: mainAxisAlignment özelliği, çocuk widgetlerin yatay eksende nasıl hizalandığını kontrol eder. Örneğin, çocuk widgetleri merkeze hizalamak için MainAxisAlignment.center kullanabilirsiniz.

crossAxisAlignment: crossAxisAlignment özelliği, çocuk widgetlerin dikey eksende nasıl hizalandığını kontrol eder. Örneğin, CrossAxisAlignment.start kullanarak widgetleri üst köşeye hizalayabilirsiniz.

mainAxisSize: mainAxisSize özelliği, yatay eksendeki boyutu nasıl belirleyeceğinizi kontrol eder. Varsayılan olarak MainAxisSize.max olarak ayarlanır, bu, yatay eksende tüm alanı kaplayacak şekilde boyutlandırır.

textDirection: textDirection özelliği, metni veya çocuk widgetleri sağdan sola (TextDirection.rtl) veya soldan sağa (TextDirection.ltr) sıralamanızı sağlar.

verticalDirection: verticalDirection özelliği, dikey düzenin yönünü belirler. Örneğin, VerticalDirection.up kullanarak çocuk widgetleri yukarıdan aşağıya sıralayabilirsiniz.
````dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  textDirection: TextDirection.rtl,
  verticalDirection: VerticalDirection.up,
  children: [
    // Yatayda sıralanacak widgetler burada tanımlanır.
  ],
)

````



## Row Widget: Horizontal Arrangement

The `Row` widget in Flutter is used for managing horizontal arrangement. It arranges child widgets in a horizontal line, meaning child widgets are placed side by side along the horizontal axis.

### Basic Usage

When using the `Row` widget, you specify the widgets that will be contained within it using the `children` property. Here's the basic usage:

```dart
Row(
  children: [
    // Define widgets to be arranged horizontally here.
  ],
)
````

Key Features
mainAxisAlignment: The mainAxisAlignment property controls how child widgets are aligned along the horizontal axis. For example, you can use MainAxisAlignment.center to align child widgets in the center.

crossAxisAlignment: The crossAxisAlignment property controls how child widgets are aligned along the vertical axis. For example, using CrossAxisAlignment.start you can align widgets to the top.

mainAxisSize: The mainAxisSize property controls how the width is determined along the horizontal axis. It's set to MainAxisSize.max by default, which means it sizes to occupy all available horizontal space.

textDirection: The textDirection property allows you to specify the text or child widget direction from right to left (TextDirection.rtl) or from left to right (TextDirection.ltr).

verticalDirection: The verticalDirection property determines the direction of the vertical layout. For example, you can use VerticalDirection.up to arrange child widgets from top to bottom.

````dart

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  textDirection: TextDirection.rtl,
  verticalDirection: VerticalDirection.up,
  children: [
    // Define widgets to be arranged horizontally here.
  ],
)
````
