import 'package:flutter/material.dart';
import 'package:tvmaze_search_bloc/model/cast/Cast.dart';
import 'package:tvmaze_search_bloc/constants/Constants.dart' as Constants;

class ListCastCard extends StatelessWidget {
  final List<Cast> items;

  ListCastCard(this.items);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(
          height: 180.0,
          child: ListView.builder(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final Cast item = items[index];
                return Card(
                  color: Colors.white12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  child: 
                  Stack(
                    children: <Widget>[
                       Center(
                            child: AspectRatio(
                          aspectRatio: 0.7,
                          child: Hero(
                            tag: item.url,
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: FadeInImage(
                                image: NetworkImage(item.image),
                                fit: BoxFit.fill,
                                placeholder: NetworkImage(Constants.PLACEHOLDER_CAST),
                              ),
                            ),
                          ),
                        )),
                       Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                              elevation: 6.0,
                              color: Colors.grey[900],
                              child: Text(
                              " ${item.name}",
                              style: TextStyle(
                                  color: Colors.white70, 
                                  fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ),
                       )
                    ],
                  )
                );
              }),
        ),
      ])
    );
  }
}
