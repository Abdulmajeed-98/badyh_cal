import 'package:dio/dio.dart';

class DioHelper {
Dio dio=Dio();

static DioHelper? dioHelper;
DioHelper._();
static DioHelper get instance{
  if(dioHelper==null)
  dioHelper=DioHelper._();
  return dioHelper!;
}
Future<Response> getRequest({required String url,Options? options})async{
  return await dio.get(url,options: options);
}
  
}