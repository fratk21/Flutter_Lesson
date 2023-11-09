# `SizedBox` Widget: Boyutlandırma ve Boşluk Ekleme

## Türkçe Açıklama

Flutter'daki `SizedBox` widgeti, bir arayüz öğesine belirli bir boyut vermek veya öğeler arasında boşluk eklemek için kullanılır. Bu widget, kullanıcı arayüzünü düzenlerken öğeleri belirli bir genişlik ve yükseklikle sınırlamak veya boşluk eklemek istediğinizde işe yarar.

`SizedBox`, sık sık diğer öğeler arasındaki düzeni kontrol etmek ve arayüz öğelerini hizalamak için kullanılır. Örneğin, bir metin kutusunun etrafına boşluk eklemek veya bir düğmeyi belirli bir boyutta sınırlamak için kullanabilirsiniz.

## Örnek Kullanım

```dart
SizedBox(
  width: 150, // Belirli bir genişlik
  height: 80, // Belirli bir yükseklik
  child: ElevatedButton(
    onPressed: () {
      // Butona tıklama işlemi
    },
    child: Text('Tıkla'),
  ),
)
````


# `SizedBox` Widget: Resizing and Adding Spacing

## English Description

The `SizedBox` widget in Flutter is used to assign a specific size to a user interface element or to add spacing between elements. This widget comes in handy when you want to constrain elements to a particular width and height or introduce spacing between them while organizing the user interface.

`SizedBox` is frequently employed to regulate layout between other elements and align user interface elements. For example, you can use it to add space around a text box or restrict a button to a specific size.

## Example Usage

```dart
SizedBox(
  width: 150, // Specific width
  height: 80, // Specific height
  child: ElevatedButton(
    onPressed: () {
      // Button click action
    },
    child: Text('Click'),
  ),
)
````
