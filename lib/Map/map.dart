import 'dart:io';
void main()
{
  Map <String , dynamic> userInfo={
    'Name':Null,
    'Age':Null,
    'Gender':Null,
    'Occupation':Null,
    'City':Null,
    'Country':Null,
    'Email':Null,
    'Phone Number':Null,
    'Address':Null,
    'Favorite Color':Null,
  };

  userInfo.forEach((key, value) {
    stdout.write("Enter your $key: ");
    String x=stdin.readLineSync()!;
    userInfo[key]=x;
  });

  print('\nUser Information:');
  userInfo.forEach((key, value) {
    print('$key : $value');
  });
}