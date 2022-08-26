import 'package:flutter/material.dart';
import 'package:projeto_teste_mottu/domain/entities/movie_entity.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  static const imageEnpoint = 'http://image.tmdb.org/t/p/w500';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.network(
        imageEnpoint + movie.imagePath,
        height: 200.0,
        width: 150.0,
      ),
    );
  }
}
