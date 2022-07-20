import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/cbefda44d6c2966adaa192a5d7236646-removebg-preview.png",
      "assets/images/WhatsApp-Image-2022-05-25-at-3.30.53-AM-600x800.jpeg",
      "assets/images/WhatsApp-Image-2022-05-25-at-3.30.53-AM-1-600x800.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/techGadgets_images/iphone-13-pro-blue-select-2.jpg",
      "assets/techGadgets_images/iphone-13-pro-gold-select.jpg",
      "assets/techGadgets_images/iphone-13-pro-graphite-select-3.jpg",
      "assets/techGadgets_images/download.jpg",
      "assets/techGadgets_images/iphone-13-pro-green-select.jpg"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/techGadgets_images/iphone-charging-cable.png",
      "assets/techGadgets_images/WhatsApp-Image-2021-12-13-at-6.30.17-PM-600x802.jpeg"
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/techGadgets_images/Group-154.png",
      "assets/techGadgets_images/WhatsApp-Image-2022-03-17-at-2.24.39-PM-600x800.jpeg",
      "assets/techGadgets_images/WhatsApp-Image-2022-03-17-at-2.24.40-PM-600x450.jpeg",
      "assets/techGadgets_images/WhatsApp-Image-2022-03-17-at-2.24.43-PM-600x450.jpeg",
      "assets/techGadgets_images/WhatsApp-Image-2022-03-17-at-2.24.38-PM-1-600x800.jpeg",
      "assets/techGadgets_images/WhatsApp-Image-2022-03-17-at-2.24.38-PM-600x800.jpeg"

    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),

  Product(
    id: 5,
    images: [
      "assets/techGadgets_images/Xiaomi-Mi-Band-5-Black-Main-1.jpg",
      "assets/techGadgets_images/M4-Fitness-Band-12-600x600.jpg",
      "assets/techGadgets_images/M4-Fitness-Band-9.jpg",
      "assets/techGadgets_images/41RB2XteL.jpg",

    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),

  Product(
    id: 6,
    images: [
      "assets/techGadgets_images/5d4c8e0109984c9fd440f1d6c66c7521.jpg",
      "assets/techGadgets_images/WhatsApp-Image-2021-12-13-at-6.30.13-PM-600x802.jpeg",

    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),

   Product(
    id: 7,
    images: [
      "assets/techGadgets_images/9567188d30009d3a6c59fd70060f3811.jpg",
      "assets/techGadgets_images/WhatsApp-Image-2021-12-13-at-6.30.17-PM-1-600x802.jpeg",
      "assets/techGadgets_images/WhatsApp-Image-2021-12-13-at-6.30.16-PM-600x802.jpeg"

    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
