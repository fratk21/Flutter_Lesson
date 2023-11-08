<h1 id="image-widget-görsel-i̇çerik-eklemek"><code>Image</code> Widget: Görsel İçerik Eklemek</h1>
<p>Flutter&#39;daki <code>Image</code> widgeti, kullanıcı arayüzüne görsel içerik eklemek için kullanılır. Bu widget, resimlerin, ikonların ve diğer görsel öğelerin görüntülenmesini sağlar. <code>Image</code> widgeti, farklı kaynaklardan görsel içerikleri yüklemek ve göstermek için kullanışlıdır.</p>
<h2 id="temel-kullanım">Temel Kullanım</h2>
<p><code>Image</code> widgetini temel olarak iki ana şekilde kullanabilirsiniz:</p>
<ol>
<li><p><strong>Network&#39;ten Görsel Yükleme</strong>: İnternet üzerinde bir URL&#39;den görsel yüklemek için <code>Image.network()</code> constructor&#39;ını kullanabilirsiniz. Örnek:</p>
<pre><code class="language-dart">Image.network(&#39;https://example.com/your_image.jpg&#39;)
</code></pre>
</li>
</ol>
<p>Assets&#39;ten Görsel Yükleme: Projenizin varlıklarından (assets) görsel yüklemek için Image.asset() constructor&#39;ını kullanabilirsiniz. Bu, projenizin pubspec.yaml dosyasında tanımlanan varlık kaynaklarına dayanır.
Örnek:
Image.asset(&#39;assets/your_image.png&#39;)
Diğer Kullanım Senaryoları
Image widgeti, daha fazla özelleştirme ve kontrol sağlayan pek çok özelliğe sahiptir:
fit: Görselin boyutlarını nasıl uyum sağlayacağınızı belirler (örneğin, BoxFit.contain, BoxFit.cover, vb.).
alignment: Görselin hizalanma yöntemini tanımlar (örneğin, Alignment.center, Alignment.topLeft, vb.).
color: Görsel üzerine bir renk karıştırabilir.
colorBlendMode: Renk karıştırma modunu belirler.
repeat: Görselin nasıl tekrarlanacağını belirler (örneğin, ImageRepeat.repeat, ImageRepeat.noRepeat, vb.).
Örnek Kullanım:</p>
<p>Image.network(
  &#39;<a href="https://example.com/your_image.jpg">https://example.com/your_image.jpg</a>&#39;,
  fit: BoxFit.cover,
  alignment: Alignment.center,
  color: Colors.blue,
  colorBlendMode: BlendMode.colorBurn,
  repeat: ImageRepeat.repeat,
)</p>


<p>Image Widget: Adding Visual Content
The Image widget in Flutter is used to add visual content to the user interface. This widget allows you to display images, icons, and other visual elements. The Image widget is versatile and can be used to load and display visual content from different sources.</p>
<p>Basic Usage
You can use the Image widget in two fundamental ways:</p>
<p>Loading Images from the Network: To load an image from a URL on the internet, you can use the Image.network() constructor. For example:</p>
<p>dart</p>
<p>Image.network(&#39;<a href="https://example.com/your_image.jpg">https://example.com/your_image.jpg</a>&#39;)
Loading Images from Assets: To load images from your project&#39;s assets, use the Image.asset() constructor. This relies on the asset resources defined in your project&#39;s pubspec.yaml file. For example:
Image.asset(&#39;assets/your_image.png&#39;)
Other Use Cases
The Image widget offers various features for customization and control:</p>
<p>fit: Determines how the image&#39;s dimensions should fit (e.g., BoxFit.contain, BoxFit.cover, etc.).
alignment: Specifies how the image should be aligned (e.g., Alignment.center, Alignment.topLeft, etc.).
color: Allows you to overlay a color on the image.
colorBlendMode: Defines the color blending mode.
repeat: Specifies how the image should be repeated (e.g., ImageRepeat.repeat, ImageRepeat.noRepeat, etc.).
Example Usage
Image.network(
  &#39;<a href="https://example.com/your_image.jpg">https://example.com/your_image.jpg</a>&#39;,
  fit: BoxFit.cover,
  alignment: Alignment.center,
  color: Colors.blue,
  colorBlendMode: BlendMode.colorBurn,
  repeat: ImageRepeat.repeat,
)</p>
