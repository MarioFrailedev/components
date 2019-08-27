import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        centerTitle: true,
        actions: <Widget>[
          
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--PCeLbj1F--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1537519822/production/designs/3189959_0.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RM'),
              backgroundColor: Colors.green[200],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--PCeLbj1F--/t_Preview/b_rgb:ffffff,c_limit,f_jpg,h_630,q_90,w_630/v1537519822/production/designs/3189959_0.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
        ),
      ),
    );
  }
}