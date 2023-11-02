import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/components/custom_text.dart';
import 'package:e_commerce_app/models/phone_model.dart';
import 'package:flutter/material.dart';

import '../product_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> slider = [
    "lib/assets/slider/slider1.jpg",
    "lib/assets/slider/slider2.jpg",
    "lib/assets/slider/slider3.jpg",
    "lib/assets/slider/slider4.jpg",
    "lib/assets/slider/slider1.jpg"
  ];

  final List<Phone> phone = [
    Phone(
      id: 1,
      name: 'Samsung Galaxy S21 Ultra',
      description:
          'The Samsung Galaxy S21 Ultra is the ultimate flagship phone, known for its stunning 6.8-inch Dynamic AMOLED 2X display, a powerful Exynos 2100 or Snapdragon 888 processor, and a versatile camera system featuring a 108MP main sensor. With a massive 5,000mAh battery, 5G support, and a premium design, this phone is a top choice for smartphone enthusiasts.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 1199.99,
    ),
    Phone(
      id: 2,
      name: 'Samsung Galaxy Note 20',
      description:
          'The Samsung Galaxy Note 20 is a high-end smartphone that comes with a vibrant 6.7-inch Super AMOLED display, an S Pen for precise input, and a powerful Exynos 990 or Snapdragon 865+ processor. It boasts a versatile camera setup, 8K video recording, and a sleek design. The Note 20 offers a fantastic all-around experience.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 999.99,
    ),
    Phone(
      id: 3,
      name: 'Samsung Galaxy A52',
      description:
          'The Samsung Galaxy A52 is a mid-range smartphone that offers an impressive 6.5-inch Super AMOLED display, a Snapdragon 720G processor, and a quad-camera system with a 64MP main sensor. It provides a smooth user experience, long battery life, and 5G connectivity in an affordable package.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 349.99,
    ),
    Phone(
      id: 4,
      name: 'Samsung Galaxy M32',
      description:
          'The Samsung Galaxy M32 is a budget-friendly smartphone with a 6.4-inch Super AMOLED display, a massive 6,000mAh battery for extended usage, and a versatile quad-camera setup. Its an excellent choice for those looking for an affordable phone with good battery life and a decent camera system.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 199.99,
    ),
    Phone(
      id: 5,
      name: 'Samsung Galaxy Z Fold 3',
      description:
          'The Samsung Galaxy Z Fold 3 is a foldable smartphone that features a 7.6-inch AMOLED display when unfolded and a smaller cover screen. Its powered by a Snapdragon 888 processor, offers S Pen support, and is perfect for multitasking. This unique phone combines the flexibility of a tablet and the portability of a smartphone.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 1799.99,
    ),
    Phone(
      id: 6,
      name: 'Samsung Galaxy S20 FE',
      description:
          'The Samsung Galaxy S20 FE is a more affordable flagship option with a 6.5-inch Super AMOLED display, a powerful Snapdragon 865 or Exynos 990 processor, and a versatile triple-camera system. It offers 5G support, a long-lasting battery, and a range of attractive colors.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 699.99,
    ),
    Phone(
      id: 7,
      name: 'Samsung Galaxy A72',
      description:
          'The Samsung Galaxy A72 is a mid-range smartphone known for its 6.7-inch Super AMOLED display, Snapdragon 720G processor, and a quad-camera setup with optical image stabilization. It provides a great multimedia experience and good value for the price.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 449.99,
    ),
    Phone(
      id: 8,
      name: 'Samsung Galaxy M42 5G',
      description:
          'The Samsung Galaxy M42 5G is an affordable 5G smartphone with a 6.6-inch Super AMOLED display, a Snapdragon 750G processor, and a quad-camera system. Its designed for fast data connectivity and offers good performance for its price range.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 299.99,
    ),
    Phone(
      id: 9,
      name: 'Samsung Galaxy A21s',
      description:
          'The Samsung Galaxy A21s is a budget-friendly smartphone with a 6.5-inch TFT display, a versatile quad-camera system, and a large 5,000mAh battery. Its a good choice for users looking for basic features at an affordable price.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 179.99,
    ),
    Phone(
      id: 10,
      name: 'Samsung Galaxy XCover Pro',
      description:
          'The Samsung Galaxy XCover Pro is a rugged smartphone designed for durability and tough conditions. It features a 6.3-inch TFT display, a removable battery, and is MIL-STD-810G certified for shock resistance. Its a great choice for outdoor and industrial use.',
      image:
          'https://1.bp.blogspot.com/-oFNHRO-TiEE/YMwxhb0M01I/AAAAAAAAKTg/iyIpmyPl4PQJX2jP8sY8RsXgCG_gZIPlgCLcBGAsYHQ/s897/Capture2.PNG',
      price: 499.99,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.purple,
          title: CustomPoppinsText(
              text: "Home Page",
              color: Colors.white,
              fsize: 20,
              fweight: FontWeight.w500),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomPoppinsText(
                    text: "Hello Dilan...",
                    color: Colors.black,
                    fsize: 25,
                    fweight: FontWeight.w500),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 175.0, autoPlay: true),
                items: slider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage(i), fit: BoxFit.cover)),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: phone.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProductView(phone: phone[index]),
                            ));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15))),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.favorite_border_outlined)),
                            ),
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(phone[index].image),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15))),
                            ),
                            Column(
                              children: [
                                CustomPoppinsText(
                                    text: phone[index].name,
                                    color: Colors.black,
                                    fsize: 15,
                                    fweight: FontWeight.w500),
                                CustomPoppinsText(
                                    text: "\$ ${phone[index].price}",
                                    color: Colors.black,
                                    fsize: 15,
                                    fweight: FontWeight.bold),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
