# Stateless  Widget - Flutter

Flutter'da kullanılan widgetler iki temel tipe ayrılır: **Stateless (Durumsuz)** ve **Stateful (Durumlu)** widgetler. Bu iki widget türü, kullanıcı arayüzünün farklı özelliklerini ve davranışlarını tanımlamak için kullanılır.

## Durumsuz (Stateless) Widget

Durumsuz widgetler, değiştirilemeyen ve statik bir yapıya sahiptir. Bu widgetler, başlangıç verilerine dayalı olarak bir görünüm oluşturur ve daha sonra değiştirilemezler. Yani, bir kez oluşturulduktan sonra, içerikleri değiştirilemez.

Durumsuz widgetler kullanıcı arayüzünün statik kısımlarını temsil etmek için idealdir. Örneğin, metin, düğmeler veya simgeler gibi sabit bileşenleri oluşturmak için kullanılabilirler. Kullanıcı etkileşimi sonucunda değişen herhangi bir öğeyi barındırmazlar.

```dart
class DurumsuzWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Bu bir Durumsuz Widget');
  }
}


# Durumlu (Stateful) Widget - Flutter

Durumlu widgetler, değiştirilebilir ve dinamik bir yapıya sahiptir. Bu widgetler, kullanıcı etkileşimleri veya diğer olaylar sonucunda içeriklerini güncelleyebilirler. Durumlu widgetler, kullanıcı arayüzünün dinamik kısımlarını oluşturmak için kullanılır.

Bu örnekte, bir sayacın değerini artırma veya azaltma yeteneğine sahip bir Durumlu Widget örneklemesi gösterilmektedir:

```dart
class DurumluWidget extends StatefulWidget {
  @override
  _DurumluWidgetState createState() => _DurumluWidgetState();
}

class _DurumluWidgetState extends State<DurumluWidget> {
  int sayac = 0;

  void artir() {
    setState(() {
      sayac++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Bu bir Durumlu Widget'),
        Text('Sayac Değeri: $sayac'),
        ElevatedButton(onPressed: artir, child: Text('Artır'))
      ],
    );
  }
}



# Stateless Widget - Flutter

In Flutter, the widgets used are divided into two primary types: **Stateless** and **Stateful** widgets. These two widget types are used to define different characteristics and behaviors of the user interface.

## Stateless Widget

Stateless widgets have an immutable and static structure. These widgets create a view based on initial data and remain unchangeable. In other words, once they are created, their content cannot be altered.

Stateless widgets are ideal for representing the static parts of a user interface. They can be used to create constant components such as text, buttons, or icons. They do not contain any elements that change as a result of user interaction.

```dart
class StatelessWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('This is a Stateless Widget');
  }
}

# Stateful Widget - Flutter

Stateful widgets are changeable and have a dynamic structure. These widgets can update their content based on user interactions or other events. Stateful widgets are used to create the dynamic parts of a user interface.

In this example, we demonstrate an instance of a Stateful Widget with the ability to increase or decrease the value of a counter:

```dart
class StatefulWidgetExample extends StatefulWidget {
  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('This is a Stateful Widget'),
        Text('Counter Value: $counter'),
        ElevatedButton(onPressed: increment, child: Text('Increment'))
      ],
    );
  }
}
