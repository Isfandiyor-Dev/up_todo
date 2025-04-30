import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CategoryModel extends Equatable {
  String id;
  String name;
  String iconPath;
  Color color;

  CategoryModel({
    required this.id,
    required this.name,
    required this.iconPath,
    required this.color,
  });
  
  @override
  List<Object?> get props => [id, name, iconPath, color];
}