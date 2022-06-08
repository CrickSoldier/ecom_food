import 'package:flutter/material.dart';
import 'package:food_order/constants.dart';

class Description extends StatefulWidget {
  const Description({Key? key, required this.title, required this.image})
      : super(key: key);
  final String title, image;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    String image = widget.image;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: kdefaultpadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, right: kdefaultpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (() => Navigator.pop(context)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: background,
                          border:
                              Border.all(color: Colors.black.withOpacity(.2)),
                          // boxShadow: [
                          //   BoxShadow(
                          //       offset: Offset(0, 5),
                          //       blurRadius: 10,
                          //       color: secondaryColor),
                          //   BoxShadow(
                          //       offset: Offset(0, -5),
                          //       blurRadius: 10,
                          //       color: secondaryColor)
                          // ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.keyboard_arrow_left_rounded),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        Icons.star,
                        color: background,
                        size: 16,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "$title \n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "Pizza\n",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ])),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "₹150",
                style: TextStyle(color: priceColor, fontSize: 24),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Container(
                height: size.height * .3,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Size\n",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.3)),
                          ),
                          TextSpan(
                            text: "Medium 14\"",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Crust\n",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.3)),
                          ),
                          TextSpan(
                            text: "Thin Crust",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Delivery in\n",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.3)),
                          ),
                          TextSpan(
                            text: "30 min",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                      ],
                    ),
                    Container(
                        width: size.width * .6,
                        child: Image.asset(
                          image,
                          fit: BoxFit.contain,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Text(
                "Ingedrients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/ham.png"),
                  Image.asset("assets/images/tomato.png"),
                  Image.asset("assets/images/garlic.png"),
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.only(right: kdefaultpadding),
                child: Container(
                  height: size.height * .1,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Place an order    >",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
