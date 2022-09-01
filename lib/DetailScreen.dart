import 'package:flutter/material.dart';
import 'package:submission_akhir_flutter_pemula/model/car_place.dart';

class DetailScreen extends StatelessWidget {
  final CarPlace car;
  const DetailScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(car: car);
        } else {
          return DetailMobilePage(car: car);
        }
      },
    );
  }
}
class DetailWebPage extends StatefulWidget {
  final CarPlace car;
  const DetailWebPage({Key? key, required this.car}) : super(key: key);

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.car.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.car.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        color: const Color.fromRGBO(84, 91, 117,1),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.car.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Roboto',
                                    color: Colors.white
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Row(
                                            children: <Widget>[
                                              const Icon(Icons.car_crash,size: 30,color: Colors.white,),
                                              const SizedBox(width: 8.0),
                                              const Text(
                                                'Engine: ',
                                                style: TextStyle(
                                                  fontFamily: 'BebasNeue',
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(width: 8.0),
                                              Text(
                                                widget.car.engine,
                                                style: const TextStyle(
                                                  fontFamily: 'BebasNeue',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(

                                        children: <Widget>[
                                          const Icon(Icons.airline_seat_recline_extra,size: 30,color: Colors.white,),
                                          const SizedBox(width: 8.0),
                                          const Text(
                                            "Seat: ",
                                            style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.car.seat,
                                            style: const TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        children: <Widget>[
                                          const Icon(Icons.health_and_safety,size: 30,color: Colors.white,),
                                          const SizedBox(width: 8.0),
                                          const Text(
                                            "Condition: ",
                                            style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.car.condition,
                                            style: const TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: <Widget>[
                                              const Icon(Icons.speed,size: 30,color: Colors.white,),
                                              const SizedBox(width: 8.0),
                                              Text(
                                                widget.car.kilometerHour,
                                                style: const TextStyle(
                                                  fontFamily: 'BebasNeue',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          const Icon(Icons.grade,size: 30,color: Colors.white,),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.car.released,
                                            style: const TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8.0),
                                      Row(
                                        children: <Widget>[
                                          const Icon(Icons.car_repair,size: 30,color: Colors.white,),
                                          const SizedBox(width: 8.0),
                                          Text(
                                            widget.car.type,
                                            style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.car.descriptions,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Roboto',
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
class DetailMobilePage extends StatelessWidget {
  final CarPlace car;
  const DetailMobilePage({Key? key, required this.car}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(38, 33, 54,1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
                children: <Widget>[
                  Image.asset(car.imageAsset),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color.fromRGBO(84, 91, 117,1),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
            Container(
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      car.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          car.price,
                          style: const TextStyle(
                            fontSize: 28.0,
                            fontFamily: 'BebasNeue',
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Best price",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'BebasNeue',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              )
            ),

            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: car.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color.fromRGBO(84, 91, 117,1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(Icons.speed, color: Colors.white,size: 30,),
                        const SizedBox(height: 8.0),
                        Text(
                          car.kilometerHour,
                          style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color.fromRGBO(84, 91, 117,1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(Icons.grade,color: Colors.white,size: 30,),
                        const SizedBox(height: 8.0),
                        Text(
                          car.released,
                          style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color.fromRGBO(84, 91, 117,1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Icon(Icons.car_repair, color: Colors.white,size: 30,),
                        const SizedBox(height: 8.0),
                        Text(
                          car.type,
                          style: const TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Text(
                          "Engine",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                              color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        car.engine,
                        style: const TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                          "Seats",
                          style: TextStyle(
                              fontSize: 15.0,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        car.seat,
                        style: const TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                          "Condition",
                          style: TextStyle(
                              fontSize: 15.0,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        car.condition,
                        style: const TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                car.descriptions,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}