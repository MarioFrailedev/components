import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100.0;
  bool _blockCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _slider(),
            _checkbox(),
            _switch(),
            Expanded(
              child: _image()
            ),
          ],
        ),
      ),
    );
  }

  Widget _slider() {

    return Slider(
      activeColor: Colors.blueAccent,
      label: 'Tamaño de la Imagen',
     
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheckBox) ? null : ( lValue ) {
        setState(() {
          _sliderValue = lValue;
        });
      },
    );
  }

  Widget _image() {
    return Image(
      image: NetworkImage('https://www.pngfind.com/pngs/m/27-274852_rick-and-morty-png-png-download-rick-and.png'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

 Widget _checkbox() {
   
  return CheckboxListTile(
    title: Text('Bloquear Slider'),
    value: _blockCheckBox,
     onChanged: (value) {
       setState(() {
         _blockCheckBox = value;
       });
       
     },
    );
 }

Widget _switch() {
return SwitchListTile(
    title: Text('Bloquear Slider'),
    value: _blockCheckBox,
     onChanged: (value) {
       setState(() {
         _blockCheckBox = value;
       });
       
     },
    );
}

}