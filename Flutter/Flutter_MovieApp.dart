import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Movie {
  final String title;
  final String description;
  final String imageUrl;

  Movie({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

class MyApp extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Dune: Part 2',
      description:
      'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.',
      imageUrl:
      'https://image.tmdb.org/t/p/original/8b8R8l88Qje9dn9OE8PY05Nxl1X.jpg',
    ),
    Movie(
      title: 'Kung Fu Panda 4',
      description:
      'After Po is tapped to become the Spiritual Leader of the Valley of Peace, he needs to find and train a new Dragon Warrior, while a wicked sorceress plans to re-summon all the master villains whom Po has vanquished to the spirit realm.',
      imageUrl:
      'https://image.tmdb.org/t/p/original/kDp1vUBnMpe8ak4rjgl3cLELqjU.jpg',
    ),
    Movie(
      title: 'Ghostbusters: Frozen Empire',
      description:
      'When the discovery of an ancient artifact unleashes an evil force, Ghostbusters new and old must join forces to protect their home and save the world from a second ice age.',
      imageUrl:
      'https://image.tmdb.org/t/p/original/r65fWcFELCSeyyrkq5wY09EPSGN.jpg',
    ),
    Movie(
      title: 'Bob Marley: One Love',
      description:
      'The story of how reggae icon Bob Marley overcame adversity, and the journey behind his revolutionary music.',
      imageUrl:
      'https://image.tmdb.org/t/p/original/mKWalirPreEdCKDJjc5TKeOP2xi.jpg',
    ),
    Movie(
      title: 'Fullt Hús',
      description:
      'A chamber orchestra is on the edge of becoming bankrupt. A world-famous cellist is hired to play with them, but his inner man is not as shiny and fine as his public character. The cellist spoils the entire band and drags them even further down the drain. Disaster strikes only minutes before the orchestra is about to take the stage with its main star.',
      imageUrl:
      'https://laugarasbio.is/assets/uploads/movies/600/Fullt-hus-vefposter.jpg',
    ),
    Movie(
      title: 'Poor Things',
      description:
      'The incredible tale about the fantastical evolution of Bella Baxter, a young woman brought back to life by the brilliant and unorthodox scientist Dr. Godwin Baxter.',
      imageUrl:
      'https://image.tmdb.org/t/p/original/kCGlIMHnOm8JPXq3rXM6c5wMxcT.jpg',
    ),
    Movie(
      title: 'The Beekeeper',
      description:
      "One man's brutal campaign for vengeance takes on national stakes after he is revealed to be a former operative of a powerful and clandestine organization known as 'Beekeepers'.",
      imageUrl:
      'https://m.media-amazon.com/images/M/MV5BYjZmODc5YmQtNjA2Mi00OTIwLWI5OWMtMzgwNGI2NDczNWZlXkEyXkFqcGdeQXVyMTY3ODkyNDkz._V1_.jpg',
    ),
    Movie(
      title: 'Godzilla x Kong: The New Empire',
      description:
      "Two ancient titans, Godzilla and Kong, clash in an epic battle as humans unravel their intertwined origins and connection to Skull Island's 'mysteries'.",
      imageUrl:
      'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-250,h-390/et00358147-ualvbgjhsh-portrait.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laugarásbíó',
      theme: ThemeData(
        primaryColor: Color(0xffa2c4e0),
      ),
      home: MovieListScreen(movies: movies),
    );
  }
}

class MovieListScreen extends StatefulWidget {
  final List<Movie> movies;

  MovieListScreen({required this.movies});

  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  // Store the highlighted state of each movie title
  Map<int, bool> isHighlighted = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laugarásbíó'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MovieDetailScreen(movie: widget.movies[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    widget.movies[index].imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    onEnter: (_) {
                      setState(() {
                        isHighlighted[index] = true;
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        isHighlighted[index] = false;
                      });
                    },
                    child: Text(
                      widget.movies[index].title,
                      style: TextStyle(
                        fontSize: 18,
                        color: isHighlighted[index] == true
                            ? Colors.blue
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 450, // Adjust the height as needed
                child: Image.network(
                  movie.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                movie.description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
