Flutter'daki Image widgeti, kullanıcı arayüzüne görsel içerik eklemek için kullanılır. Bu widget, resimlerin, ikonların ve diğer görsel öğelerin görüntülenmesini sağlar. Image widgeti, farklı kaynaklardan görsel içerikleri yüklemek ve göstermek için kullanışlıdır.

Temel olarak Image widgeti iki ana şekilde kullanılabilir:

- Network'ten Görsel Yükleme: İnternet üzerinde bir URL'den görsel yüklemek için Image.network() constructor'ını kullanabilirsiniz. Örnek:

````dart
Image.network('https://example.com/your_image.jpg')
````

Assets’ten Görsel Yükleme: Projenizin varlıklarından (assets) görsel yüklemek için Image.asset() constructor’ını kullanabilirsiniz. Bu, projenizin pubspec.yaml dosyasında tanımlanan varlık kaynaklarına dayanır. Örnek:

```dart
Image.asset('assets/your_image.png')
````
Image widgeti, daha fazla özelleştirme ve kontrol sağlayan pek çok özelliğe sahiptir:

fit: Görselin boyutlarını nasıl uyum sağlayacağınızı belirler (örneğin, BoxFit.contain, BoxFit.cover, vb.).
alignment: Görselin hizalanma yöntemini tanımlar (örneğin, Alignment.center, Alignment.topLeft, vb.).
color: Görsel üzerine bir renk karıştırabilir.
colorBlendMode: Renk karıştırma modunu belirler.
repeat: Görselin nasıl tekrarlanacağını belirler (örneğin, ImageRepeat.repeat, ImageRepeat.noRepeat, vb.).

```dart
Image.network(
  'https://example.com/your_image.jpg',
  fit: BoxFit.cover,
  alignment: Alignment.center,
  color: Colors.blue,
  colorBlendMode: BlendMode.colorBurn,
  repeat: ImageRepeat.repeat,
)
````
