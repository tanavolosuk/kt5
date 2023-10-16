// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarsDataImpl _$$CarsDataImplFromJson(Map<String, dynamic> json) =>
    _$CarsDataImpl(
      cars: (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CarsDataImplToJson(_$CarsDataImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
