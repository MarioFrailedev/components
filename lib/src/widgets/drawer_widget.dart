import 'package:flutter/material.dart';

class DraweWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              //Navigator.of(context).pushNamed('tabs', arguments: 1);
            },
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[50],
              ),
              accountName: Text(
                'Rick Sanchez',
                style: Theme.of(context).textTheme.title,
              ),
              accountEmail: Text(
                'ricksanchezc137@gmail.com',
                style: Theme.of(context).textTheme.caption,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                backgroundImage: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--PCeLbj1F--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1537519822/production/designs/3189959_0.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text('RM'),
                  backgroundColor: Colors.green[200],
                ),
              ],
            ),
          ),

          ListTile(
            onTap: () => Navigator.of(context).pushNamed( 'avatar' ),
            leading: Icon(Icons.account_circle),
            title: Text(
              'Avatar',
            ),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed( 'animatedContainer' ),
            leading: Icon(Icons.donut_large),
            title: Text(
              'Animaciones',
            ),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed( 'slider' ),
            leading: Icon(Icons.donut_large),
            title: Text(
              'Slider',
            ),
          ),
        ],
      ),
    );
  }
}