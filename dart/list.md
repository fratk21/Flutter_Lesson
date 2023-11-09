## Dart dilinde listeler

birden fazla öğeyi depolamak için kullanılır. Listeler, List sınıfı tarafından sağlanır ve birçok farklı veri türü içerebilir.

Aşağıdaki örnek, bir List oluşturur ve listenin uzunluğunu, ilk öğesini ve son öğesini yazdırır:

## Dart lists

are used to store multiple items. Lists are provided by the List class and can contain many different data types.

The following example creates a List and prints its length, first item, and last item:

```dart
List<String> exampleList = ['apple', 'banana', 'cherry'];
print(exampleList.length); // 3
print(exampleList.first); // apple
print(exampleList.last); // cherry

Listeler, [] veya List() ifadeleri kullanılarak oluşturulabilir. Ayrıca, add(), insert(), remove(), clear() ve diğer birçok yöntemle değiştirilebilir.

Aşağıdaki örneklerde, listelerdeki arama, silme ve ekleme işlemleri gösterilmiştir:

List<String> exampleList = ['apple', 'banana', 'cherry'];

// Listede bir öğe arama
// Searching for an item in the list
print(exampleList.contains('banana')); // true

// Listeye öğe ekleme
// Adding an item to the list
exampleList.add('date');
print(exampleList); // ['apple', 'banana', 'cherry', 'date']

// Listeden öğe silme
// Removing an item from the list
exampleList.remove('banana');
print(exampleList); // ['apple', 'cherry']

// Listeye öğe ekleme (belirli bir konuma)
// Adding an item to a specific position in the list
exampleList.insert(1, 'banana');
print(exampleList); // ['apple', 'banana', 'cherry']
```
