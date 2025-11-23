import 'package:flutter/material.dart';
import 'dart:convert';
import './pizza.dart';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza.fromJson(Map<String, dynamic> json) :
    id = int.tryParse(json['id'].toString()) ?? 0,
    pizzaName = json['pizzaName'] != null ? json['pizzaName'].toString() : 'No Name',
    description = json['description'] != null ? json['description'].toString() : 'No Description',
    price = double.tryParse(json['price'].toString()) ?? 0.0,
    imageUrl = json['imageUrl'] ?? '';

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl
    };
  }
}