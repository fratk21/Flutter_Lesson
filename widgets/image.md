<p>Image Widget: Görsel İçerik Eklemek
Flutter&#39;daki Image widgeti, kullanıcı arayüzüne görsel içerik eklemek için kullanılır. Bu widget, resimlerin, ikonların ve diğer görsel öğelerin görüntülenmesini sağlar. Image widgeti, farklı kaynaklardan görsel içerikleri yüklemek ve göstermek için kullanışlıdır.</p>
<p>Temel Kullanım
Image widgetini temel olarak iki ana şekilde kullanabilirsiniz:</p>
<p>Network&#39;ten Görsel Yükleme: İnternet üzerinde bir URL&#39;den görsel yüklemek için Image.network() constructor&#39;ını kullanabilirsiniz. Örnek:</p>
<p>dart

Image.network(&#39;<a href="https://example.com/your_image.jpg">https://example.com/your_image.jpg</a>&#39;)
Assets&#39;ten Görsel Yükleme: Projenizin varlıklarından (assets) görsel yüklemek için Image.asset() constructor&#39;ını kullanabilirsiniz. Bu, projenizin pubspec.yaml dosyasında tanımlanan varlık kaynaklarına dayanır. Örnek:</p>

<p>dart

Image.asset(&#39;assets/your_image.png&#39;)
Diğer Kullanım Senaryoları
Image widgeti, daha fazla özelleştirme ve kontrol sağlayan pek çok özelliğe sahiptir:</p>

<p>fit: Görselin boyutlarını nasıl uyum sağlayacağınızı belirler (örneğin, BoxFit.contain, BoxFit.cover, vb.).</p>
<p>alignment: Görselin hizalanma yöntemini tanımlar (örneğin, Alignment.center, Alignment.topLeft, vb.).</p>
<p>color: Görsel üzerine bir renk karıştırabilir.</p>
<p>colorBlendMode: Renk karıştırma modunu belirler.</p>
<p>repeat: Görselin nasıl tekrarlanacağını belirler (örneğin, ImageRepeat.repeat, ImageRepeat.noRepeat, vb.).</p>
<p>Örnek Kullanım:
dart

Image.network(
&#39;<a href="https://example.com/your_image.jpg">https://example.com/your_image.jpg</a>&#39;,
fit: BoxFit.cover,
alignment: Alignment.center,
color: Colors.blue,
colorBlendMode: BlendMode.colorBurn,
repeat: ImageRepeat.repeat,
)</p>
