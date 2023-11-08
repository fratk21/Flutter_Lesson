# Dart Dilinde Koşul Yapıları

Koşul yapıları, bir kod bloğunun çalışmasını veya çalışmamasını belirli bir koşula bağlı olarak değiştirmenizi sağlar. Dart dilinde yaygın olarak kullanılan koşul yapıları şunlardır:

## 1. `if` İfadesi

`if` ifadesi, belirli bir koşulu kontrol eder ve koşul doğru olduğunda belirtilen kod bloğunu çalıştırır. Örneğin:

```dart
if (koşul) {
  // Koşul doğruysa bu kod bloğu çalıştırılır
} else {
  // Koşul yanlışsa bu kod bloğu çalıştırılır (opsiyonel)
}


## 2. `else if` İfadesi

`else if` ifadesi, bir önceki `if` veya `else if` ifadesinin koşulunun yanlış olduğu durumları kontrol etmek için kullanılır. Birden fazla koşulu sırayla kontrol etmek için kullanılır. Örneğin:

```dart
if (koşul1) {
  // Koşul1 doğruysa bu kod bloğu çalıştırılır
} else if (koşul2) {
  // Koşul2 doğruysa bu kod bloğu çalıştırılır
} else {
  // Hiçbir koşul doğru değilse bu kod bloğu çalıştırılır (opsiyonel)
}


## 3. `switch` İfadesi

`switch` ifadesi, bir değişkenin değerini belirli durumlarla karşılaştırmak için kullanılır. Farklı durumlar için kod blokları belirtilir ve karşılaştırılan değere göre ilgili durum çalıştırılır. Örneğin:

```dart
switch (değişken) {
  case değer1:
    // Değişken değeri değer1'e eşitse bu kod bloğu çalıştırılır
    break;
  case değer2:
    // Değişken değeri değer2'ye eşitse bu kod bloğu çalıştırılır
    break;
  default:
    // Hiçbir durum uymuyorsa bu kod bloğu çalıştırılır (opsiyonel)
}



## 4. Ternary Operatörü

Ternary operatörü, bir koşulu incelemek ve koşul doğruysa bir değeri veya ifadeyi döndürmek için kullanılır. Örneğin:

```dart
koşul ? değer1 : değer2;
