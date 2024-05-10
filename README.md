
# Resume App

# What is List ? 
-  List is used to representing a collection of objects.
- List is collection of multiple value of all data type.
- List is denoted by '[]'. 

## Example:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];
   print("Numbers: $numbers");
}
````
## Add Element:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];
   numbers.add(10);
   print("Numbers: $numbers");
}
````

## Remove Element:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];

   //Remove element by value
   numbers.remove(9);

   //Remove element by index
   numbers.removeAt(1);

   print("Numbers: $numbers");
}
````
## Find length of list:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];

   print("Numbers length: ${numbers.length}");
}
````
## Reverce the list:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];

  numbers = numbers.reversed.toList();
  print('Reversed list: $numbers');
}
````
## Clear the list:
```bash
import 'dart:io';
void main()
{
   List numbers=[3, 1, 4, 1, 5, 9, 2, 6, 5];

   numbers.clear();
  print('After clearing: $numbers');
}
````
# What is Map ? 
- Map is an object that stores data in the form of a key-value pair.
- Each value is associated with its key, and it is used to access its corresponding value.
-  In Map, each key must be unique, but the same value can occur multiple times.

## Example:
```bash
import 'dart:io';
void main() {
  Map<String, int> person = {
    'Emre': 30,
    'Sanem': 25,
    'Charlie': 35,
  };
}
````

## Generics :
- Generics provide a way to write reusable code that can work with different types. 
- They allow you to define classes, functions, and interfaces that can operate on a variety of data types without sacrificing type safety. 
- Generics are denoted by using angle brackets < > and a type parameter.

### Example:
```bash

void main() {
  // Creating a list of integers
  List<int> numbers = [1, 2, 3, 4, 5];
  print(numbers); // Output: [1, 2, 3, 4, 5]

  // Creating a list of strings
  List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes'];
  print(fruits); // Output: [Apple, Banana, Orange, Grapes]

  // Creating a map with generics
  Map<String, int> person = {
    'Sanem': 30,
    'Emre': 25,
    'Charlie': 35,
  };

  print('$person');
}
````
# Status Bar:
##  Global :
```bash
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.red));
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return  MaterialApp(
      debugShowCheckedModeBanner:  false,
      routes:AppRoutes.routes,
    );
  }
}
````
## AppBar :
```bash
class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.red),
      ),
    );
  }
}
````

# Login Page
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/96159164-0154-4ae5-817b-ccc344dbcca2" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/c4daf0ac-e0cf-4c27-837b-b0b62f94f890" height=22% width=35%>
<video src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/409a1e8e-eda2-4bd3-8aaf-e3ca9cdc1780" height=22% width=35%>

# Drawer Page
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/d69ab547-465c-46da-9824-076ed3358ca8" height=22% width=35%>

