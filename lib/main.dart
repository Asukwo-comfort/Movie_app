import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pedantic/pedantic.dart';
import 'di/get_it.dart' as getIt;
import 'movie_app.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(getIt.init());
  runApp(MovieApp());
}





// import 'package:dartz/dartz.dart';
// import 'package:flutter/material.dart';
// import 'package:movie_app/domain/repository/app_error.dart';
// import 'package:movie_app/domain/repository/no_params.dart';
// import 'package:movie_app/entities/movie_entities.dart';
// import 'domain/repository/usecases/getTrending.dart';
// import 'package:pedantic/pedantic.dart';
// import 'di/get_it.dart' as getIt;
//
// Future<void> main() async {
//   unawaited(getIt.init());
//   GetTrending getTrending = getIt.getItInstance<GetTrending>();
//   final Either<AppError, List<MovieEntity>> eitherResponse = await getTrending(NoParams());
//   eitherResponse.fold(
//           (l) {
//             print('error');
//             print(l);
//           },
//           (r) {
//         print('list of movies');
//         print(r);
//       }
//   );
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//   return MaterialApp(
//     home: Container(),
//   );
//   }
//   }


