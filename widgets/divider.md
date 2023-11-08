# `Divider` Widget: Arayüzü Ayırma ve Hizalama

Flutter'daki `Divider` widgeti, kullanıcı arayüzünde öğeleri ayırmak ve hizalamak için kullanılır. Genellikle yatay veya dikey çizgiler oluşturarak öğeler arasında bir bölme veya ayırıcı sağlar. `Divider` widgeti, öğeleri düzenlerken aralarına belirli bir ayrım çizgisi eklemek istediğinizde kullanışlıdır.

## Temel Özellikler

1. **color**: `Divider`'ın rengini belirler. Varsayılan olarak gri renktedir.

2. **height**: `Divider`'ın yüksekliğini belirler. Genellikle `1.0` gibi düşük bir değer kullanılır.

3. **thickness**: `Divider`'ın kalınlığını belirler. Genellikle `1.0` gibi düşük bir değer kullanılır.

4. **indent**: `Divider`'ın başlangıç kenar boşluğunu belirler.

5. **endIndent**: `Divider`'ın bitiş kenar boşluğunu belirler.

## Örnek Kullanım

```dart
Divider(
  color: Colors.blue,
  height: 2.0,
  thickness: 2.0,
  indent: 20,
  endIndent: 20,
)



# `Divider` Widget: Separating and Aligning Elements

The `Divider` widget in Flutter is used to separate and align elements in the user interface. It typically provides a dividing or separator line between elements, often in the form of horizontal or vertical lines. The `Divider` widget is useful when you want to add a specific separation line between elements while organizing them.

## Core Features

1. **color**: Specifies the color of the `Divider`. It defaults to gray.

2. **height**: Sets the height of the `Divider`. Typically, a low value like `1.0` is used.

3. **thickness**: Determines the thickness of the `Divider`. Typically, a low value like `1.0` is used.

4. **indent**: Sets the starting edge inset of the `Divider`.

5. **endIndent**: Sets the ending edge inset of the `Divider`.

## Example Usage

```dart
Divider(
  color: Colors.blue,
  height: 2.0,
  thickness: 2.0,
  indent: 20,
  endIndent: 20,
)
