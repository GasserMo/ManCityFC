import 'package:http/http.dart' as http;
import 'dart:convert';


class ApiService{
  final url='http://api.football-data.org/v4/competitions/PL/standings';
  final token= 'c7e848d538e14d73969974557042057b';
   List<dynamic>standings=[];
    String season='';
  Future<void> fetchStanding()async{
   
   final response= await http.get(Uri.parse(url), headers: {
    'X-AUTH-TOKEN': token
   });
   if(response.statusCode==200){
   final data=jsonDecode(response.body);
   standings=data['standings'][0]['table'];
   season=data['filters']['season'];
   }
   else{
    print('error while bringing the data');
   }
  }

}