import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productdescription extends StatelessWidget {
  final Function onTap;
  bool readmore;
   Productdescription({super.key, required this.onTap, required this.readmore});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;


    return Column(
      children: [
        Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Product Name On The Card",style: TextStyle(
                          fontSize: width < 400 ? 16 : 16 + width * 0.01,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2,
                          height: 1.6,

                        ),

                        ),
                        SizedBox(height: 5,),
                        Text("Brand of Country",style: TextStyle(
                          fontSize: width < 400 ? 14 : 14 + width * 0.01,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          height: 1.6,

                        ),

                        ),
                      ],
                    ),

                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("\$12.99",style: TextStyle(
                          fontSize: width < 400 ? 16 : 16 + width * 0.01,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2,
                          height: 1.6,

                        ),

                        ),
                        SizedBox(height: 5,),
                        Text("250g",style: TextStyle(
                          fontSize: width < 400 ? 14 : 14 + width * 0.01,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.2,
                          height: 1.6,

                        ),

                        ),
                      ],
                    ),

                  ),

                ],
              ),
            )
          ],
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              )
          ),
          child: Text("Code #265gg37",style: TextStyle(
            fontSize: width < 400 ? 14 : 14 + width * 0.01,
            fontWeight: FontWeight.w500,
            color: Colors.black.withOpacity(.4),
            letterSpacing: 1.2,
            height: 1.6,

          ),

          ),
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child:Text(
                    "Composition",
                    style: TextStyle(
                      fontSize: width < 400 ? 14 : 14 + width * 0.01,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.5),
                      letterSpacing: 1.2,
                      height: 1.6,

                    ),
                  )
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 6,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      ,style: TextStyle(
                      fontSize: width < 400 ? 14 : 14 + width * 0.01,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.8),
                      letterSpacing: 1.2,
                      height: 1.6,

                    ),
                      maxLines: !readmore ? 2: null,

                    ),
                  ),
                  // Flexible(
                  //   flex: 0,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Container(
                  //         child:Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black.withOpacity(.5),),
                  //
                  //       ),
                  //       Text(
                  //         "Full",
                  //         style: TextStyle(
                  //           fontSize: width < 400 ? 12 : 12 + width * 0.01,
                  //           fontWeight: FontWeight.w500,
                  //           color: Colors.black.withOpacity(.5),
                  //           letterSpacing: 1.2,
                  //           height: 1.6,
                  //
                  //         ),
                  //       ),
                  //
                  //
                  //     ],
                  //   ),
                  // ),
                ],
              ),

              Container(
                height: 25,
                  child:TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                    ),
                    onPressed: (){
                      onTap();
                    },
                    child: Text(
                      !readmore? "Read more...":"Read less..",
                      style: TextStyle(
                        fontSize: width < 400 ? 14 : 14 + width * 0.01,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(.4),
                        letterSpacing: 1.2,
                        height: 1.6,

                      ),
                    ),
                  )
              ),

            ],
          ),
        ),
        Container(
          width: width,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child:Text(
                          "Package / Weight",
                          style: TextStyle(
                            fontSize: width < 400 ? 14 : 14 + width * 0.01,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2,
                            height: 1.6,

                          ),
                        )
                    ),
                    SizedBox(height: 5,),
                    Text("Paper Box / 250 grams",style: TextStyle(
                      fontSize: width < 400 ? 14 : 14 + width * 0.01,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.8),
                      letterSpacing: 1.2,
                      height: 1.6,

                    ),

                    ),

                  ],
                ),
              ),
              Flexible(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:Text(
                          "Other Options",
                          style: TextStyle(
                            fontSize: width < 400 ? 12 : 12 + width * 0.01,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(.5),
                            letterSpacing: 1.2,
                            height: 1.6,

                          ),
                        ),

                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 30, // Set the desired height
                            width: 50, // Set the desired width
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                              ),
                              child: Text(
                                "300g",
                                style: TextStyle(
                                  fontSize: width < 400 ? 12 : 12 + width * 0.01,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                  letterSpacing: 1.2,
                                  height: 1.6,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30, // Set the desired height
                            width: 50, // Set the desired width
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                              ),
                              child: Text(
                                "500g",
                                style: TextStyle(
                                  fontSize: width < 400 ? 12 : 12 + width * 0.01,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                  letterSpacing: 1.2,
                                  height: 1.6,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 30, // Set the desired height
                            width: 50, // Set the desired width
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                              ),
                              child: Text(
                                "1kg",
                                style: TextStyle(
                                  fontSize: width < 400 ? 12 : 12 + width * 0.01,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5),
                                  letterSpacing: 1.2,
                                  height: 1.6,
                                ),
                              ),
                            ),
                          ),



                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
