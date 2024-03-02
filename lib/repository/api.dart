import 'package:dio/dio.dart';
class NewRepository
{

  final _dio=Dio();

Future<Response> getTopBusinessnews()async
 {

   final res=await _dio.get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c04bd0103da74ab289598b526a52d1a6');

   return res;
 }

}

