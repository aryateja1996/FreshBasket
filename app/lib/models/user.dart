// ignore_for_file: file_names
String regEmail = '';
String regAddress = '';
String regName = '';
String regPhone = '';
String regPassword = '';
String logEmail = '';
String logPassword = '';
class User{
   final String name;
   final String phone;
   final String address;
   final String lat;
   final String lon;
   final String email;
   
   User({required this.name,required this.address,required this.phone,required this.email,required this.lat,required this.lon});

  factory User.fromDocument(Map<String, dynamic>  doc){
    return User(name: doc[''], address: doc[''], phone: doc[''], email: doc[''], lat: doc[''], lon: doc['']);
  }  
}

