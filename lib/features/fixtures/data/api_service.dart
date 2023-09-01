
import 'package:http/http.dart' as http;
import 'dart:convert';


class FixturesApi{

 final url='http://api.football-data.org/v4/teams/65/matches';
 final token='c7e848d538e14d73969974557042057b';
 List<dynamic>matches=[];
Future<void>FetchFixutes()async{
  final response= await http.get(Uri.parse(url), headers: {
    'X-AUTH-TOKEN':token
  });
   if(response.statusCode==200){
    final data= jsonDecode(response.body);
     matches = data['matches'];
    
   }
}

}