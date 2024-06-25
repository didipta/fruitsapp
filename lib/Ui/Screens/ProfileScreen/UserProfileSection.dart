import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodecommerce/Style/Images.dart';

class UserProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
              child:Image.asset(
                AssetPaths.profile,
                fit: BoxFit.cover,

              )
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Johan Devid',
                  style: TextStyle(
                    fontSize: width < 400 ? 16 : 16 + width * 0.01,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildListTile('Account Details', Icons.arrow_forward_ios, context, width),
                _buildDivider(),
                _buildListTile('Security', Icons.arrow_forward_ios, context, width),
                _buildDivider(),
                _buildListTile('Language', Icons.arrow_forward_ios, context, width),
                _buildDivider(),
                _buildListTile('Sign Out', Icons.logout, context, width),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, BuildContext context, double width) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minTileHeight: 0,
      title: Text(
        title,
        style: TextStyle(
          fontSize: width < 400 ? 12 : 12 + width * 0.01,
          color: Colors.black.withOpacity(.7),
        ),
      ),
      trailing: Icon(icon,
          size: width < 400 ? 14 : 14 + width * 0.01
          , color: Colors.grey),
      onTap: () {},
    );
  }

  Widget _buildDivider() {
    return Divider(height: 1, color: Colors.grey[300]);
  }
}
