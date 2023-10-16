import 'package:flutter/material.dart';
import 'package:kt5/models/car/car.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({super.key, required this.car, required this.index}); //???
  final Car car;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromRGBO(255, 239, 213, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
          leading: Text(
            index.toString(),
            style: const TextStyle(color: Colors.black, fontSize: 24),
          ),
          title: Text(
            car.model,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w900),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "brand: ${car.brand}",
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                "price: ${car.price.toString()}\$",
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
          trailing: Column(
            children: [
              if (car.availability)
                const Icon(Icons.check_circle_outline,
                    size: 32, color: Colors.green)
              else
                const Icon(Icons.do_not_disturb_alt,
                    size: 32, color: Colors.red)
            ],
          )),
    );
  }
}
