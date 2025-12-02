import 'package:firstapp/CustomSingleCard.dart';
import 'package:flutter/material.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageLinks = ["https://www.shutterstock.com/image-illustration/wireless-bluetooth-headphones-white-case-600nw-2051472314.jpg","https://cdn.thewirecutter.com/wp-content/media/2023/11/fitness-tracker-2048px-5344.jpg?auto=webp&quality=75&crop=1.91:1&width=1200","https://www.shutterstock.com/image-photo/solar-power-bank-outdoor-activities-260nw-2192559111.jpg","https://www.shutterstock.com/image-photo/roasted-whole-baked-duck-orange-600nw-2535676921.jpg","https://m.media-amazon.com/images/I/71Cmb+NrNUL.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5dgdcuoZkZcdA0pKkyml9e133Vq2eoJrE4A&s"];
    List<String> title = ["Wireless Bluetooth Earbuds","Smart Fitness Tracker","Portable Solar Power Bank","Air Fryer","Waterproof Bluetooth Speaker","Instant Pot Pressure Cooker"];
    List<String> description = ["Enjoy superior sound quality and seamless connectivity with these premium wireless","Track your daily steps, calories burned, heart rate, and sleep patterns. This sleek fitness tracker syncs with your smartphone for easy monitoring and offers notifications for calls and texts.","Charge your devices on the go with this eco-friendly solar power bank. Equipped with a high-capacity battery and solar panels, it’s perfect for outdoor adventures or emergency situations.","Fry your favorite foods with little to no oil using this state-of-the-art air fryer. With adjustable temperature controls and a large capacity basket, it’s the perfect kitchen companion for health-conscious cooking.","Take your music anywhere with this compact, waterproof Bluetooth speaker. With a built-in microphone for hands-free calls and a long-lasting battery, it’s perfect for beach trips or hiking.","A multi-functional kitchen appliance that combines a pressure cooker, slow cooker, rice cooker, and steamer, all in one. Cook meals quickly and easily with preset cooking modes for different dishes."];
    List<double> price = [59.99,49.99,39.99,89.99,29.99,79.99];
    List<double> rating = [4.5,4.6,4.3,4.7,29.99,4.8];

    var widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widthSize < 700 ? 2 : 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return CustomSingleCard(
            imageName: imageLinks[index],
            prodName: title[index],
            prodDescription: description[index],
            prodPrice: price[index],
            prodRating: rating[index],
          );
        },
      ),
    );
  }
}
