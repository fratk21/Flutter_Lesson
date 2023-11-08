# Flutter'da Child ve Children Kavramları

## Child (Çocuk)

**Türkçe Açıklama:**

Child (Çocuk), Flutter'da bir widget'in içerdiği yalnızca bir alt widget'i temsil eder. Bu, widget ağacının altındaki tek bir alt öğeyi ifade eder. Child widget, genellikle kullanıcı arayüzünün belirli bir bölümünü veya öğesini temsil eder.

**Örnek Kullanım:**

Örneğin, bir `Container` widget'ı içinde sadece bir `Text` widget'i olan bir Child widget örneği:

```dart
Container(
  child: Text('Merhaba, Flutter!'),
)

Örneğin, bir ListView widget'ı içinde birden fazla ListTile widget'i olan bir Children widget örneği:

ListView(
  children: [
    ListTile(title: Text('Öğe 1')),
    ListTile(title: Text('Öğe 2')),
    ListTile(title: Text('Öğe 3')),
  ],
)

For example, a Child widget example could be a Container widget containing only a single Text widget:

Container(
  child: Text('Hello, Flutter!'),
)


In Flutter, "children" implies the ability for a widget to contain multiple sub-widgets. It represents a widget tree containing multiple sub-elements. Children widgets are typically used to represent multiple items like lists, rows, or similar multi-element structures.

ListView(
  children: [
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    ListTile(title: Text('Item 3')),
  ],
)

