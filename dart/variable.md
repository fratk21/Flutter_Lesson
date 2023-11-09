# Dart Dilinde Değişken Türleri - Variable Types in Dart

Dart programlama dilinde kullanılan temel değişken türleri aşağıda açıklanmıştır.

1. `int`: Tam sayıları temsil etmek için kullanılır.

   - `int`: Used to represent integers.

2. `double`: Ondalıklı sayıları temsil etmek için kullanılır.

   - `double`: Used to represent floating-point numbers.

3. `num`: Hem tam sayıları hem de ondalıklı sayıları temsil edebilen genel bir sayı türüdür.

   - `num`: A general number type that can represent both integers and floating-point numbers.

4. `String`: Metin veya karakter dizilerini temsil etmek için kullanılır.

   - `String`: Used to represent text or strings of characters.

5. `bool`: Mantıksal (Boolean) değerleri temsil etmek için kullanılır (true veya false).

   - `bool`: Used to represent logical (Boolean) values (true or false).

6. `List`: Bir liste veya diziyi temsil etmek için kullanılır.

   - `List`: Used to represent a list or an array.

7. `Map`: Bir eşleme (mapping) veya sözlüğü temsil etmek için kullanılır.

   - `Map`: Used to represent a mapping or a dictionary.

8. `Set`: Tekrarlamayan öğelerin koleksiyonunu temsil etmek için kullanılır.

   - `Set`: Used to represent a collection of unique items.

9. `dynamic`: Değişkenin türünün çalışma zamanında belirlenmesine izin veren bir türdür.

   - `dynamic`: A type that allows the variable's type to be determined at runtime.

10. `var`: Değişkenin türünün otomatik olarak türetilmesine izin veren bir anahtar kelimedir.

    - `var`: A keyword that allows the type of the variable to be automatically inferred.

11. `final`: Değişkenin bir kez başlatıldığında yeniden atanamayacağını belirtir.

    - `final`: Indicates that the variable cannot be reassigned once initialized.

12. `const`: Sabit bir değeri temsil etmek için kullanılır ve çalışma zamanında değiştirilemez.
    - `const`: Used to represent a constant value that cannot be changed at runtime.

Örnek Dart kodu:

```dart
// Tam Sayıları Temsil Eden Bir Fonksiyon
int tamSayiOrnegi() {
  int yas = 30;
  return yas;
}

// Ondalıklı Sayıları Temsil Eden Bir Fonksiyon
double ondalikliSayiOrnegi() {
  double fiyat = 24.99;
  return fiyat;
}

// Metin (String) Temsil Eden Bir Fonksiyon
String metinOrnegi() {
  String isim = "Ahmet";
  return isim;
}

// Mantıksal Değerleri Temsil Eden Bir Fonksiyon
bool mantiksalDegerOrnegi() {
  bool dogruMu = true;
  return dogruMu;
}

// Listeleri Temsil Eden Bir Fonksiyon
List<int> listeOrnegi() {
  List<int> sayiListesi = [1, 2, 3, 4, 5];
  return sayiListesi;
}

// Eşlemeleri Temsil Eden Bir Fonksiyon
Map<String, int> eslemeOrnegi() {
  Map<String, int> yaslar = {'Ali': 30, 'Ayşe': 25};
  return yaslar;
}

// Tekrarlamayan Öğelerin Koleksiyonunu Temsil Eden Bir Fonksiyon
Set<String> tekrarlamayanOrnek() {
  Set<String> isimler = {'Ali', 'Ayşe', 'Mehmet'};
  return isimler;
}

// Dinamik Değişkeni Temsil Eden Bir Fonksiyon
dynamic dinamikDegiskenOrnegi() {
  dynamic dinamikDegisken = "Bu bir metin";
  return dinamikDegisken;
}

// Final Değişkeni Temsil Eden Bir Fonksiyon
String finalDegiskenOrnegi() {
  final sabitDegisken = "Bu bir sabit değer";
  return sabitDegisken;
}

// Sabit Değeri Temsil Eden Bir Fonksiyon
double sabitDegerOrnegi() {
  const sabitDeger = 3.14159;
  return sabitDeger;
}

void main() {
  print("Tam Sayı Örneği: ${tamSayiOrnegi()}");
  print("Ondalıklı Sayı Örneği: ${ondalikliSayiOrnegi()}");
  print("Metin Örneği: ${metinOrnegi()}");
  print("Mantıksal Değer Örneği: ${mantiksalDegerOrnegi()}");
  print("Liste Örneği: ${listeOrnegi()}");
  print("Eşleme Örneği: ${eslemeOrnegi()}");
  print("Tekrarlamayan Öğeler Örneği: ${tekrarlamayanOrnek()}");
  print("Dinamik Değişken Örneği: ${dinamikDegiskenOrnegi()}");
  print("Final Değişken Örneği: ${finalDegiskenOrnegi()}");
  print("Sabit Değer Örneği: ${sabitDegerOrnegi()}");
}
```
