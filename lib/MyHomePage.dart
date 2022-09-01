import 'package:flutter/material.dart';
import 'package:submission_akhir_flutter_pemula/DetailScreen.dart';
import 'package:submission_akhir_flutter_pemula/model/car_place.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(84, 91, 117,1),
        title: const Text(
          "Car Market Place",
          style: TextStyle(fontFamily: 'BebasNeue',color: Colors.white, fontSize: 30,),
        )
      ),

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CarPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return CarPlaceGrid(gridCount: 4);
          } else {
            return CarPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}
class CarPlaceList extends StatelessWidget {
  const CarPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(

        itemBuilder: (context, index){
          final CarPlace car = carPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(car: car);
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 10.0,
              ),
              child: Card(
                color: const Color.fromRGBO(84, 91, 117,1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)
                ),
                elevation: 4,
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        child:  Image.asset(
                          car.imageAsset,
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                car.name,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                              Text(
                                car.price,
                                style: const TextStyle(
                                    fontSize: 23.0,
                                    color: Colors.white,
                                    fontFamily: 'BebasNeue'
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                car.type,
                                style: const TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey,
                                    fontFamily: 'Roboto'
                                ),
                              ),
                              const Text(
                                "Best Price",
                                style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey,
                                    fontFamily: 'BebasNeue'
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
    },
    itemCount: carPlaceList.length,
    );
  }
}
class CarPlaceGrid extends StatelessWidget {
  final int gridCount;
  const CarPlaceGrid({Key? key,required this.gridCount}) : super(key: key);

  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: carPlaceList.map((car) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(car: car);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      car.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      car.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      car.price,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}