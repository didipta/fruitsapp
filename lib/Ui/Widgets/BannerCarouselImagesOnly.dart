

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Router/RouterPath.dart';
import '../../Style/Images.dart';

class BannerCarouselImagesOnly extends StatelessWidget {
  final List<String> images = [
    AssetPaths.products,
    AssetPaths.products1,
    AssetPaths.products,
    AssetPaths.products,
    AssetPaths.products1,

    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height* 0.3, // Adjust the height as needed
      margin: EdgeInsets.all(5),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children:[
          Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children:[
                    Image.asset(
                    images[index],
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: height* 0.65,
                        color: Colors.black.withOpacity(0.15),
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   crossAxisAlignment: CrossAxisAlignment.center,
                            //   children: [
                            //     Container(),
                            //     Container(
                            //       height: 40,
                            //       child: ElevatedButton(
                            //         onPressed: () {},
                            //         child: Text(
                            //           "Stylize",
                            //           style: TextStyle(
                            //             fontSize: width < 400 ? 16 : 16 + width * 0.01,
                            //             color: Colors.white,
                            //             fontWeight: FontWeight.w500,
                            //           ),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // )
                          ],
                        ),
                      ),
                    ),


                ]);
              },
              itemCount: images.length,
              autoplay: true,
              autoplayDelay: 5000,
              duration: 1000,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white.withOpacity(0.4),
                  activeColor: Colors.white,
                  size: 8,
                  activeSize: 8,
                  space: 1
                ),
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 10, left: 0),
              ),
            ),
          // Positioned(
          //   top: 20,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height:height* 0.6,
          //     // color: Colors.black.withOpacity(0.3),
          //     padding: EdgeInsets.all(12),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(
          //               child: IconButton(
          //                 onPressed: (){
          //                   Navigator.pop(context);
          //                 },
          //                 icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          //               )
          //             ),
          //             Container(
          //               height: 40,
          //               child: Row(
          //                 children: [
          //                   Padding(
          //                     padding: const EdgeInsets.all(0),
          //                     child: IconButton(
          //                       onPressed: (){
          //                         Navigator.pushNamed(context, Routerpath.search);
          //                       },
          //                       icon: SvgPicture.asset(AssetPaths.searchIcon,
          //                         width: 24,
          //                         height: 24,
          //                         fit: BoxFit.cover,
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                   Padding(
          //                     padding: const EdgeInsets.all(0),
          //                     child: IconButton(
          //                       onPressed: (){},
          //                       icon: SvgPicture.asset(AssetPaths.wishlistIcon,
          //                         width: 24,
          //                         height: 24,
          //                         fit: BoxFit.cover,
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //
          //                   Padding(
          //                     padding: const EdgeInsets.all(0),
          //                     child: IconButton(
          //                       onPressed: (){},
          //                       icon: SvgPicture.asset(AssetPaths.cartIcon,
          //                         width: 24,
          //                         height: 24,
          //                         fit: BoxFit.cover,
          //                         color: Colors.white,
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //
          //     // color: Colors.black.withOpacity(0.3),
          //     padding: EdgeInsets.all(20),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         Container(),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(),
          //             Container(
          //               height: 40,
          //               child: ElevatedButton(
          //                 onPressed: () {},
          //                 child: Text(
          //                   "Stylize",
          //                   style: TextStyle(
          //                     fontSize: width < 400 ? 16 : 16 + width * 0.01,
          //                     color: Colors.white,
          //                     fontWeight: FontWeight.w500,
          //                   ),
          //                 ),
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),

    ]
      ),



    );
  }
}
