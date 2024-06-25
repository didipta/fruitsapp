import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Ui/Widgets/Methods/Appbar.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _Notificationscreen();
}

class _Notificationscreen extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Notification',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    _buildListTile('Order #456tt37', "Your order has been placed successfully",
                        "$index hours ago"
                    , context, MediaQuery.of(context).size.width),
                    _buildDivider(),
                  ],

                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(String title, String subtitle,String time, BuildContext context, double width) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      minTileHeight: 0,
      title: Text(
        title,
        style: TextStyle(
          fontSize: width < 400 ? 12 : 12 + width * 0.01,
          color: Colors.black.withOpacity(.7),
        ),
      ),

      subtitle: Text(subtitle,style: TextStyle(
        fontSize: width < 400 ? 12 : 12 + width * 0.01,
        color: Colors.black,
      ),),
      trailing: Text(time,style: TextStyle(
      fontSize: width < 400 ? 10 : 10 + width * 0.01,
      color: Colors.grey,
    ),),
      onTap: () {},
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, color: Colors.grey[300]);
  }

}
