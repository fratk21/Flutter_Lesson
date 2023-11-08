# Flutter'da `Container` Widgeti: Özellikler ve Kullanım

## Türkçe Açıklama

Flutter'daki `Container` widgeti, kullanıcı arayüzü öğelerini düzenlemek ve özelleştirmek için kullanılan çok yönlü bir yapı taşıdır. `Container`, içeriğin düzenini ayarlama, dekorasyon ekleme ve diğer birçok işlevi gerçekleştirmek için kullanılır. İşte `Container` widgetinin temel özellikleri ve kullanımı:

## Temel Özellikler

1. **child**: `Container` içeriği. Genellikle yalnızca bir alt öğeyi içerir.

2. **alignment**: İçeriğin hizalanma noktası. Örneğin, `Alignment.topRight` içeriği sağ üst köşeye hizalar.

3. **margin**: `Container`'ın kenar boşluğunu belirler. Diğer öğelerden uzaklık eklemek için kullanılır.

4. **padding**: İçerikle `Container` arasındaki iç boşluğu belirler.

5. **color**: `Container`'ın arka plan rengini ayarlar.

6. **width** ve **height**: `Container`'ın genişliği ve yüksekliği belirler.

7. **decoration**: `Container`'a şekil, kenarlık, gölge vb. eklemek için kullanılır.

## Örnek Kullanım

```dart
Container(
  alignment: Alignment.center,
  margin: EdgeInsets.all(10.0),
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  color: Colors.blue,
  width: 200,
  height: 100,
  child: Text('Merhaba, Container!'),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black, width: 2),
    borderRadius: BorderRadius.circular(10),
  ),
)




# Flutter's `Container` Widget: Features and Usage

## English Description

The `Container` widget in Flutter is a versatile building block used to arrange and customize user interface elements. It is used to adjust the layout of content, add decoration, and perform various other functions. Here are the key features and usage of the `Container` widget:

## Key Features

1. **child**: The content of the `Container`. Typically contains a single child.

2. **alignment**: The alignment point of the content. For example, `Alignment.topRight` aligns the content to the top-right corner.

3. **margin**: Specifies the margin of the `Container`. Used to add space around other elements.

4. **padding**: Determines the inner padding between the content and the `Container`.

5. **color**: Sets the background color of the `Container`.

6. **width** and **height**: Defines the width and height of the `Container`.

7. **decoration**: Used to add shape, border, shadow, and more to the `Container`.

## Example Usage

```dart
Container(
  alignment: Alignment.center,
  margin: EdgeInsets.all(10.0),
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  color: Colors.blue,
  width: 200,
  height: 100,
  child: Text('Hello, Container!'),
  decoration: BoxDecoration(
    border: Border.all(color: Colors black, width: 2),
    borderRadius: BorderRadius.circular(10),
  ),
)
