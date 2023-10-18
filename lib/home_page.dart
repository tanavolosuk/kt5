import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';
import 'package:kt5/models/carsData/cars_data.dart';
import 'package:kt5/widget/car_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var client = Dio();
  var url = 'https://myfakeapi.com/api/cars';
  List<Car> carList = [];

  void getNetworkData() async { 
    var response = await client.get(url);
    carList = CarsData.fromJson(response.data).cars; 
    //carList = carList.where((car) => car.availability).toList();
    setState(() {}); //говорит что ему надо перерисоваться
  }

  @override
  void initState() {
    //определяет состояние приложения в первый раз
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //???
    return Scaffold(
      body: ListView.builder( //ListView - линейный список прокручиваемых элементов
        itemCount: carList.length, //количество объектов в списке
        itemBuilder: (context, index) { //создает элемент списка
          return CarWidget(
            car: carList[index],
            index: index + 1,
          );
        },
      ),
    );
  }
}
