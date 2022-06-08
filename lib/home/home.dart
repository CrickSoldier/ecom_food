import 'package:flutter/material.dart';
import 'package:food_order/constants.dart';
import 'package:food_order/description/description.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 50, horizontal: kdefaultpadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * 0.08,
                  width: size.height * 0.08,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"))),
                ),
                Icon(
                  Icons.menu_rounded,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
            child: Align(
              alignment: Alignment.topLeft,
              child: RichText(
                  // textAlign: TextAlign.left,
                  text: TextSpan(children: [
                TextSpan(
                    text: "Food\n",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                TextSpan(
                    text: "Delivery",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))
              ])),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: kdefaultpadding),
              child: Row(
                children: [
                  CategoriesItem(
                    size: size,
                    bgcolor: primaryColor,
                    circleColor: Colors.white,
                    iconColor: Colors.black,
                    image: "assets/images/pizza-icon.png",
                    title: "Pizaa",
                  ),
                  CategoriesItem(
                    size: size,
                    bgcolor: background,
                    circleColor: secondaryColor,
                    iconColor: Colors.white,
                    image: "assets/images/shrimp-icon.png",
                    title: "Seafood",
                  ),
                  CategoriesItem(
                    size: size,
                    bgcolor: background,
                    circleColor: secondaryColor,
                    iconColor: Colors.white,
                    image: "assets/images/soda-icon.png",
                    title: "Soft Drinks",
                  ),
                  // CategoriesItem(
                  //   size: size,
                  //   bgcolor: background,
                  //   circleColor: secondaryColor,
                  //   iconColor: Colors.white,
                  //   image: "assets/images/cheese.png",
                  //   title: "Cheese",
                  // )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Popular",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Items(
            size: size,
            image: "assets/images/pizza1.png",
            title: "Tomato",
            weight: 350,
            rating: 5,
          ),
          Items(
            size: size,
            image: "assets/images/pizza2.png",
            title: "Cheese",
            weight: 250,
            rating: 4,
          ),
          Items(
            size: size,
            image: "assets/images/pizza3.png",
            title: "Mixed",
            weight: 300,
            rating: 5,
          ),
        ],
      )),
    );
  }
}

class Items extends StatelessWidget {
  const Items({
    Key? key,
    required this.size,
    required this.image,
    required this.title,
    required this.weight,
    required this.rating,
  }) : super(key: key);

  final Size size;
  final String image, title;
  final int weight, rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kdefaultpadding),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Description(
                          title: title,
                          image: image,
                        )))),
            child: Container(
              height: size.height * 0.22,
              // decoration:
              //     BoxDecoration(borderRadius: BorderRadius.circular(300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: size.width * .01,
                          ),
                          Text(
                            "top of the week",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black.withOpacity(.6),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      Text(
                        "Weignt : $weight gm",
                        style: TextStyle(
                            color: Colors.black.withOpacity(.3), fontSize: 12),
                      )
                    ],
                  ),
                  Container(
                    width: size.width * .5,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(10)),
            ),
            child: Center(
                child: Text(
              "+",
              style: TextStyle(fontSize: 32),
            )),
          ),
          // Text("5.0")
        ],
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    Key? key,
    required this.size,
    required this.bgcolor,
    required this.circleColor,
    required this.iconColor,
    required this.image,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String image, title;
  final Color bgcolor, circleColor, iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: size.height * .3,
        width: size.width * .3,
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(offset: Offset(0, 10), blurRadius: 10, color: textColor)
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: size.height * .053,
                width: size.height * .053,
                decoration:
                    BoxDecoration(color: circleColor, shape: BoxShape.circle),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: iconColor,
                  size: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
