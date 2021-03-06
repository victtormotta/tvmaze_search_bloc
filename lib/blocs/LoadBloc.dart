import 'package:tvmaze_search_bloc/blocs/Bloc.dart';
import 'package:tvmaze_search_bloc/constants/Constants.dart' as Constants;
import 'package:tvmaze_search_bloc/model/tvshow/list/ListTvShow.dart';
import '../services/data/Service.dart';
import 'package:rxdart/rxdart.dart';
/*
  Load all shows from TvMaze
 */
class LoadBloc extends Bloc{

  Observable<ListTvShow> apiResultFlux;

  LoadBloc(){
    addEventSink();
    apiResultFlux = searchFlux
        .distinct()
        .asyncMap(new Service().load)
        .switchMap((valor) => Observable.just(valor));
  }

  void addEventSink(){
    searchEvent.add("${Constants.URL_LOAD}");
  }
}