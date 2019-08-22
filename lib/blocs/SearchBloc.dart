import 'package:tvmaze_search_bloc/model/tvshow/list/ListTvShow.dart';
import '../services/data/Service.dart';
import 'package:rxdart/rxdart.dart';

import 'Bloc.dart';
/*
  O fluxo atual recebe string então, é feito uma transformação p/ objeto da classe SearchResult;

  distinct -> valores distintos;

  where -> fornece condição;

  asyncMap ->  This acts like map, except that convert may return a Future, and in that
  case, the stream waits for that future to complete before continuing with
  its result;

  switchMap -> pega um valor, retorna um observable com o valor e quando receber um novo valor,
  faz com que as streams anteriores parem de ser recebidas;
  basicamente, para de ouvir qualquer outro estado; ouve sempre o mais atual do asyncMap;

  RESUMO: um filtro com parametros, e p/ remover o penultimo termo e só é enviar p/ consulta o último;

  */

class SearchBloc extends Bloc {

  Observable<ListTvShow> apiResultFlux;

  SearchBloc(){
    apiResultFlux = searchFlux
        .distinct()
//        .where((valor) => valor.length > 3)
        .debounceTime(const Duration(milliseconds: 600))
        .asyncMap(new Service().search)
        .switchMap((valor) => Observable.just(valor));
  }
}
