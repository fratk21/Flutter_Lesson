<p>Dart Dilinde Koşul Yapıları
Koşul yapıları, bir kod bloğunun çalışmasını veya çalışmamasını belirli bir koşula bağlı olarak değiştirmenizi sağlar. Dart dilinde yaygın olarak kullanılan koşul yapıları şunlardır:</p>
<ol>
<li>if İfadesi
if ifadesi, belirli bir koşulu kontrol eder ve koşul doğru olduğunda belirtilen kod bloğunu çalıştırır. Örneğin:</li>
</ol>
<p>if (koşul) {
  // Koşul doğruysa bu kod bloğu çalıştırılır
} else {
  // Koşul yanlışsa bu kod bloğu çalıştırılır (opsiyonel)
}
2. else if İfadesi
else if ifadesi, bir önceki if veya else if ifadesinin koşulunun yanlış olduğu durumları kontrol etmek için kullanılır. Birden fazla koşulu sırayla kontrol etmek için kullanılır. Örneğin:</p>
<p>if (koşul1) {
  // Koşul1 doğruysa bu kod bloğu çalıştırılır
} else if (koşul2) {
  // Koşul2 doğruysa bu kod bloğu çalıştırılır
} else {
  // Hiçbir koşul doğru değilse bu kod bloğu çalıştırılır (opsiyonel)
}
3. switch İfadesi
switch ifadesi, bir değişkenin değerini belirli durumlarla karşılaştırmak için kullanılır. Farklı durumlar için kod blokları belirtilir ve karşılaştırılan değere göre ilgili durum çalıştırılır. Örneğin:</p>
<p>switch (değişken) {
  case değer1:
    // Değişken değeri değer1&#39;e eşitse bu kod bloğu çalıştırılır
    break;
  case değer2:
    // Değişken değeri değer2&#39;ye eşitse bu kod bloğu çalıştırılır
    break;
  default:
    // Hiçbir durum uymuyorsa bu kod bloğu çalıştırılır (opsiyonel)
}
4. Ternary Operatörü
Ternary operatörü, bir koşulu incelemek ve koşul doğruysa bir değeri veya ifadeyi döndürmek için kullanılır. Örneğin:</p>
<p>koşul ? değer1 : değer2;
Eğer &quot;koşul&quot; doğruysa &quot;değer1&quot;, yanlışsa &quot;değer2&quot; döndürülür.</p>





<p>Conditional Statements in Dart
Conditional statements allow you to control the flow of your program based on specific conditions. In Dart, commonly used conditional structures include:</p>
<ol>
<li>if Statement
The if statement checks a specific condition and executes a code block if the condition is true. For example:</li>
</ol>
<p>if (condition) {
  // This code block is executed if the condition is true
} else {
  // This code block is executed if the condition is false (optional)
}
2. else if Statement
The else if statement is used to check conditions when the previous if or else if condition is false. It&#39;s used to evaluate multiple conditions sequentially. For example:</p>
<p>if (condition1) {
  // This code block is executed if condition1 is true
} else if (condition2) {
  // This code block is executed if condition2 is true
} else {
  // This code block is executed if none of the conditions are true (optional)
}
3. switch Statement
The switch statement is used to compare the value of a variable with different cases. Different code blocks are defined for each case, and the one corresponding to the variable&#39;s value is executed. For example:</p>
<p>switch (variable) {
  case value1:
    // This code block is executed if the variable is equal to value1
    break;
  case value2:
    // This code block is executed if the variable is equal to value2
    break;
  default:
    // This code block is executed if none of the cases match (optional)
}
4. Ternary Operator
The ternary operator is used to evaluate a condition and return a value or expression based on whether the condition is true or false. For example:</p>
<p>condition ? value1 : value2;
If the &quot;condition&quot; is true, it returns &quot;value1,&quot; otherwise, it returns &quot;value2.&quot;</p>
