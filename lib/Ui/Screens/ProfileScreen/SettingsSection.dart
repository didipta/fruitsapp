import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Router/RouterPath.dart';

class SettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Settings',
              style: TextStyle(
                  fontSize: width < 400 ? 14 : 14 + width * 0.01,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          _buildListTile('Shopping list', Icons.shopping_bag_outlined, context,
              MediaQuery.of(context).size.width, Routerpath.shoppinglist),
          _buildDivider(),
          _buildListTile('Delivery Address', Icons.local_library_outlined,
              context, MediaQuery.of(context).size.width, ""),
          _buildDivider(),
          _buildListTile('Payment methods', Icons.payments_outlined, context,
              MediaQuery.of(context).size.width, ""),
          _buildDivider(),
          _buildListTile(
              'Notification',
              Icons.notification_add_outlined,
              context,
              MediaQuery.of(context).size.width,
              Routerpath.notification),
          _buildDivider(),
        ],
      ),
    );
  }
}

Widget _buildListTile(String title, IconData icon, BuildContext context,
    double width, String Router) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    minTileHeight: 0,
    title: Text(
      title,
      style: TextStyle(
        fontSize: width < 400 ? 16 : 16 + width * 0.01,
        color: Colors.black.withOpacity(.7),
        fontWeight: FontWeight.w500,
      ),
    ),
    leading: Icon(icon,
        size: width < 400 ? 20 : 20 + width * 0.01, color: Colors.grey),
    onTap: () {
      Navigator.pushNamed(context, Router);
    },
  );
}

Widget _buildDivider() {
  return Divider(height: 1, color: Colors.grey[300]);
}
