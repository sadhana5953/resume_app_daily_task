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
# Drawer Page
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/d69ab547-465c-46da-9824-076ed3358ca8" height=22% width=35%>

# Login Page
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/2fed72ad-649e-4242-9215-d171055c5703" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/4d45cf17-ce16-4c04-aad6-522b09997d2c" height=22% width=35%>

https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/b999fb06-1d55-4011-b50e-7af5d2e4680e

# Google Validation & SnackBar
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/385564ec-3266-4d53-b010-1a51c1995d0b" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/79dde5e6-0bf2-4661-a6b6-02e4acf2a39c" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/4e4a8dfa-cfa9-4a1a-9722-435123cc0102" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/4125ef77-6bd1-4bac-84d6-f35b1b5e6d69" height=22% width=35%>

https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/7831a622-9486-4263-9d71-df6200502044

# Image Picker
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/dee057f0-1325-49e9-93d2-a9aafefd96fb" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/dc920def-72de-442a-bfc9-049701413309" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/9089f152-4a6a-4fcb-9001-c7447e376056" height=22% width=35%>

https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/68bb5c4c-6f6a-474a-8adc-43ae03f4b626

# Id Card Registration
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/bdb2505a-0ff7-4faf-98bb-c29bf9d510ea" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/e8450d55-3d92-4d62-bc73-1ba4d90b4cfd" height=22% width=35%>

https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/e1852b34-5261-491d-99be-c35d68433f32

# Dynamic Text Field
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/abfe5a0f-821c-4701-b448-b5d45184f990" height=22% width=35%>
<img src="https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/306ea4c2-609a-485e-b1e0-28fa8df490a5" height=22% width=35%>

https://github.com/sadhana5953/resume_app_daily_task/assets/148869257/3c0ef2b9-c89a-4659-9298-86ce8374d21f


