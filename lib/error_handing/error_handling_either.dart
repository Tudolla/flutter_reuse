import 'package:dartz/dartz.dart';

// in Either, we have right params and left params
// right if return true
// left if catch error
Either<String, double> safeDivide(int a, int b) {
  if (b == 0) {
    return Left("Cannot divide by zero");
  } else {
    return Right(a / b);
  }
}

// Future<Either<String, http.Response>> getData() async{
//   try{
//     final response = await http.post(Uri.parse("link"), body: {});
//     if(response.statusCode == 200){
//       return Right(reponse);
//     }
//     switch(response.statusCode){
//       case 400:
//       return const Left("The server can't process");
//       case 401:
//       return const Left("You are unauthorized");
//       default:
//       return const Left("Something wrong");
//     }
//   }catch(e){
//     return Left(e.toString());
//   }
// }

void main() {
  // final res can't be accessed directly
  final result1 = safeDivide(10, 2);
  final result2 = safeDivide(1, 0);

  result1.fold(
    (error) => print("Error: $error"),
    (value) => print("result: $value"),
  );

  result2.fold(
    (error) => print("Error: $error"),
    (value) => print("Result is: $value"),
  );
}
