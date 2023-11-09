# Flutter'da Card Widgeti

Flutter'daki `Card` widgeti, malzeme tasarımı kartını temsil eder ve yükseltiye sahip olabilir, başka widget'ları içinde barındırabilir. Genellikle bilgiyi düzenli bir şekilde göstermek için kullanılır.

## Temel Kullanım

`Card` widget'ını kullanmak için, şu şekilde basit bir kart oluşturabilirsiniz:

```dart
Card(
  child: ListTile(
    title: Text('Kart Başlığı'),
    subtitle: Text('Altbaşlık'),
    leading: Icon(Icons.account_circle),
  ),
)
```

Bu, Card içinde ListTile kullanarak başlık, altbaşlık ve başlık ikonu içeren temel bir kart oluşturur.

Özellikler

1. elevation
   Açıklama: Bu kartın yerleştirileceği z-koordinatı. Bu, kartın gölge düşüresi ve göreli boyutunu kontrol eder.
   Tür: double
   Varsayılan Değer: 1.0

2. shape
   Açıklama: Kartın kenarlık şekli. Önceden tanımlanmış şekilleri kullanabilir veya ShapeBorder kullanarak özelleştirebilirsiniz.
   Tür: ShapeBorder
   Varsayılan Değer: RoundedRectangleBorder

3. margin
   Açıklama: Kartın etrafındaki boşluk.
   Tür: EdgeInsets
   Varsayılan Değer: EdgeInsets.all(4.0)

4. color
   Açıklama: Kartın arka plan rengi.
   Tür: Color
   Varsayılan Değer: Temaya bağlı

5. child
   Açıklama: Kartın ana içeriği. Genellikle diğer widget'ları içerir, örneğin ListTile, Column veya Row.
   Tür: Widget
   Varsayılan Değer: null

6. clipBehavior
   Açıklama: Çocuğun kart şekli ile nasıl kırpılacağını belirler.
   Tür: Clip
   Varsayılan Değer: Clip.none

```dart

Card(
  elevation: 5.0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  ),
  margin: EdgeInsets.all(8.0),
  color: Colors.white,
  child: Column(
    children: [
      ListTile(
        title: Text('Kart Başlığı'),
        subtitle: Text('Altbaşlık'),
        leading: Icon(Icons.account_circle),
      ),
      ButtonBar(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('BUTON 1'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('BUTON 2'),
          ),
        ],
      ),
    ],
  ),
)
```
