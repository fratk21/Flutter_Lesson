# Flutter'da Widget Mimarisi - Widget Architecture in Flutter

Flutter, Google tarafından geliştirilen açık kaynaklı bir UI (kullanıcı arayüzü) yazılım geliştirme çerçevesidir. Flutter, görsel arayüzleri oluşturmak için "widget" adı verilen temel yapı taşlarını kullanır. Widget'lar, bir uygulamanın kullanıcı arayüzünü oluştururken, bileşenlerin ve düzenlerin temel taşlarını oluşturur.

### Widget Nedir?

Widget, bir Flutter uygulamasının temel yapı taşıdır. Her şey bir widget'tır. Flutter, kullanıcı arayüzünü oluşturmak ve düzenlemek için widget'ları kullanır. Widget'lar, bir uygulamanın grafiksel arayüzünü tanımlayan ve birbirine yerleştirilen nesnelerdir.

Widget'lar iki türe ayrılır:

1. **Stateless Widget (Durumsuz Widget)**: Değiştirilemez ve statik bir yapıya sahiptir. Durumsuz widget'lar, görünümü yalnızca başlangıç ​​verilerine dayalı olarak oluştururlar ve daha sonra değiştirilemezler.

2. **Stateful Widget (Durumlu Widget)**: Değiştirilebilir ve dinamik bir yapıya sahiptir. Durumlu widget'lar, kullanıcı etkileşimleri veya diğer olaylara göre değiştirilebilirler.

### Widget Hiyerarşisi

Flutter'da widget'lar, bir hiyerarşi içinde yer alır. Bu hiyerarşi, widget'ların birbirine gömüldüğü veya iç içe geçtiği bir ağaç yapısıdır. En üstteki widget, uygulamanın ana widget'ıdır ve bu widget tüm diğer widget'ları içerir.

## Örnek Flutter Widget Kodu

Aşağıda, basit bir Flutter uygulamasında kullanılan widget kodu örneği bulunmaktadır:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget Mimarisi'),
        ),
        body: Center(
          child: Text('Merhaba, Flutter!'),
        ),
      ),
    );
  }
}


# Flutter Widget Architecture

Flutter is an open-source UI (user interface) software development framework developed by Google. It uses fundamental building blocks called "widgets" to create visual interfaces. Widgets are the basic elements for building user interfaces and layouts of an application.

## What is a Widget?

A **widget** is a fundamental building block of a Flutter application. In Flutter, everything is a widget. Widgets are used to build and arrange the user interface of an application. They are objects that define the graphical interface of an application and can be composed together.

Widgets are categorized into two types:

1. **Stateless Widget**: These widgets are immutable and have a static structure. Stateless widgets create the view based on initial data and remain unchangeable.

2. **Stateful Widget**: These widgets are mutable and have a dynamic structure. Stateful widgets can be changed based on user interactions or other events.

## Widget Hierarchy

In Flutter, widgets are organized in a hierarchy. This hierarchy forms a tree structure where widgets are nested or embedded within each other. The topmost widget is the root widget of the application, and it contains all other widgets.

## Example Flutter Widget Code

Here's an example of Flutter widget code used in a simple Flutter application:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Architecture in Flutter'),
        ),
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
      ),
    );
  }
}
