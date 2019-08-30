import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '' ;
  String _email = '';
  String _bDate = '';

  String _roleSelected = 'Desarrollador Mobile';
  List   _roles = ['Desarrollador Mobile','Desarrollador Back-end','Front-end','Tester', 'Scrum Master'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formularios'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical:20.0),
        children: <Widget>[
          _nameInput(),
           SizedBox(height: 12,),
          _emailInput(),
          SizedBox(height: 15.0),
          _passworIput(),
           SizedBox(height: 18.0),
          _bdayPicker(context),
          SizedBox(height: 15.0),
          _dropDown(),
          Divider(),
          _showData(),
          
        ],
      ),
    );
  }

  Widget _nameInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        counter: Text('Letras ${_name.length}'),
        hintText: 'Rick Sanchez',
        labelText: 'Nombre',
        helperText: 'Nombre completo',
        suffixIcon: Icon(Icons.person),
      ),
      onChanged: (value) => setState(() {_name = value;}),
    );
  }

  Widget _showData() {

    return ListTile(
      title: Text('Nombre: $_name'),
      subtitle: Text('Email:  $_email'),
      trailing: Text(_roleSelected),
    );
  }

  Widget _emailInput() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'planetac77@gmail.com',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
      ),
      onChanged: (valueEmail) => setState(() { _email = valueEmail; }), 
    );
  }

 Widget _passworIput() {
   return TextField(
     obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Ingresa el password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock),
      
      ),
      onChanged: (valueEmail) => setState(() {  }), 
    );
 }

  Widget _bdayPicker(BuildContext context) {

    return TextField(

      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        hintText: 'Fecha de Naciento',
        labelText: 'Fecha de Naciento',
        suffixIcon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selecDate(context);
      },
    );

  }

  void _selecDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1950),
      lastDate: new DateTime(2025),
      locale: Locale('es'),
    );

    if (picked != null) {
      setState(() {
        _bDate = picked.toString();
        _inputFieldDateController.text = _bDate;
      });
    }

  }

  List <DropdownMenuItem<String>> getOptionDropddpwn() {
      
      List<DropdownMenuItem<String>>  list = new List();
      
      _roles.forEach((role){
        list.add(DropdownMenuItem(
          child: Text(role),
          value: role,
        ));
      });
  
  return list;
  }

  Widget _dropDown() {

    return Row(
      children: <Widget>[
        Icon(Icons.arrow_drop_down_circle),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _roleSelected,
          items: getOptionDropddpwn(),
          onChanged: (opt) {
          setState(() {
            _roleSelected = opt;
          });
        },
      ),
      ],
    ); 
    
  }

}