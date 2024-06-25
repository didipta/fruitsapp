import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: width * 0.45,
            height: 50,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.05),
              borderRadius: BorderRadius.circular(8),

            ),
            //quantity add and remove
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Theme.of(context).primaryColor,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.remove,),
                  ),
                ),
                Container(
                  child: Text("1",style: TextStyle(
                    fontSize: width < 400 ? 12 : 12+ width*0.01,
                    fontWeight: FontWeight.w600,
                  ),),
                ),

                Container(
                  color:  Theme.of(context).primaryColor,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add),
                  ),
                ),
              ],

            ) ,
          ),
          Container(
            width: width * 0.45,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Theme.of(context).secondaryHeaderColor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
                elevation: MaterialStateProperty.all(0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white),
                  SizedBox(width: 10),
                  Text('Add to Cart', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}