import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../Widgets/ListItemCarousel.dart';
import '../../Widgets/Methods/Appbar.dart';
import 'methodscreen/Addressshow.dart';

class Checkoutscreen extends StatefulWidget {
  const Checkoutscreen({super.key});

  @override
  State<Checkoutscreen> createState() => _CheckoutscreenState();
}

class _CheckoutscreenState extends State<Checkoutscreen> {
  List<Map> items = [
    {
      'title': 'My Home',
      'subtitle': 'Johan Devid City, Dhaka 123 Street 00-123-9656',
      'active': true,
    },
    {
      'title': 'My Office',
      'subtitle': 'Johan Devid City, Dhaka 123 Street 00-123-9656 ',
      'active': false,
    },
    {
      'title': 'My Home',
      'subtitle': 'Johan Devid City, Dhaka 123 Street 00-123-9656',
      'active': false,
    },
    {
      'title': 'My Office',
      'subtitle': 'Johan Devid City, Dhaka 123 Street 00-123-9656',
      'active': false,
    },

    // Add more images as needed
  ];
  List<Map> items2 = [
    {
      'title': 'Cash',
      'subtitle': 'Cash on Delivery',
      'active': true,
    },
    {
      'title': 'Bank Card',
      'subtitle': '0000****444**693 ',
      'active': false,
    },
    {
      'title': 'Bank Card',
      'subtitle': '0000****444**693 ',
      'active': false,
    },
    {
      'title': 'Bank Card',
      'subtitle': '0000****444**693 ',
      'active': false,
    },


    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: appBar(context),
        body:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Expanded(
                   flex: 5,
                   child: SingleChildScrollView(
                     child: Column(
                        children: [
                          Deliveryaddress(width, context),
                          Timeshow(width),
                          Paymentmethod(width, context),
                        ],
                      ),
                   ),
                 ),
                 Expanded(
                   flex: 0,
                   child: Container(
                      padding: EdgeInsets.all(10),
                     margin: EdgeInsets.all(8),
                     decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),

                     ),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '\$122.46',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Free',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discount',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '-\$6.12',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To Pay',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '\$116.37',
                                style: TextStyle(
                                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),


                        ],
                     ),
                   ),
                 )


              ],
            ),

   
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(
            width < 400 ? 10 : 10 + width * 0.01,
          ),
          child: TextButton(
            onPressed: () {
      
              // Checkout logic
            },
            child: Text(
              "Pay Now",
              style: TextStyle(
                fontSize: width < 400 ? 16 : 16 + width * 0.01,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: width < 400 ? 15 : 15 + width * 0.01,
                ),
              ),
            ),
          ),
        ),
      );
  }

  Container Timeshow(double width) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Time',
                      style: TextStyle(
                        fontSize: width < 400 ? 12 : 12 + width * 0.01,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tomorrow, December 23',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,

                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Time of day',
                      style: TextStyle(
                        fontSize: width < 400 ? 12 : 12 + width * 0.01,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '14:00 - 15:00',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    )
                  ],
                ),
              ),

            ],

          ),
        );
  }

  Container Paymentmethod(double width, BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      fontSize: width < 400 ? 16 : 16 + width * 0.01,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Add Payment Method',
                                style: TextStyle(
                                  fontSize: width < 400 ? 14 : 14 + width * 0.01,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              ),
              Container(
                height: width < 400 ? 15.h : 10.h + width * 0.01,
                child: ListView.builder(
                  itemCount: items2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          items2.forEach((item) => item['active'] = false);
                          items2[index]['active'] = true;
                        });
                      },
                      child: Container(
                        width: width < 400 ? width * 0.6 : width * 0.5,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: items2[index]['active']
                              ? Colors.black
                              : Colors.grey[200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items2[index]['title'],
                                  style: TextStyle(
                                    color: items2[index]['active']
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: width < 400 ? 14 : 14 + width * 0.01,
                                  ),
                                ),
                                items2[index]['active']
                                    ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 20,
                                )
                                    : Container(),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              items2[index]['subtitle'],
                              style: TextStyle(
                                color: items2[index]['active']
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: width < 400 ? 14 : 14 + width * 0.01,
                                fontWeight: items2[index]['active']
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
  }

  Container Deliveryaddress(double width, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Address',
                style: TextStyle(
                  fontSize: width < 400 ? 16 : 16 + width * 0.01,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Add Address',
                            style: TextStyle(
                              fontSize: width < 400 ? 14 : 14 + width * 0.01,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
          Container(
            height: width < 400 ? 20.h : 15.h + width * 0.01,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      items.forEach((item) => item['active'] = false);
                      items[index]['active'] = true;
                    });
                  },
                  child: Container(
                    width: width < 400 ? width * 0.7 : width * 0.5,
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: items[index]['active']
                          ? Colors.black
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              items[index]['title'],
                              style: TextStyle(
                                color: items[index]['active']
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: width < 400 ? 14 : 14 + width * 0.01,
                              ),
                            ),
                            items[index]['active']
                                ? Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                : Container(),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          items[index]['subtitle'],
                          style: TextStyle(
                            color: items[index]['active']
                                ? Colors.white
                                : Colors.black,
                            fontSize: width < 400 ? 14 : 14 + width * 0.01,
                            fontWeight: items[index]['active']
                                ? FontWeight.bold
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
