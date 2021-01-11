import 'package:flutter/material.dart';
import './../colors/colors.dart';
import '../token_service.dart';
import 'dart:convert';
import 'Employee.dart';
import 'Services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}




class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingles APP",
          style: TextStyle (
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Center(
            child: Text('WELCOME BACK, TEACHER',
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                fontSize: 30,
              ),
            ),
          ),
          RaisedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Aulas()));},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("CONTINUAR AULAS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => DataTableDemo()));},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("EDITAR AULAS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("EDITAR PERFIL",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));},
        child: Icon(
            Icons.account_circle
        ),
        backgroundColor: Colors.blue[500],
      ),
      backgroundColor: Colors.blue[300],
    );

  }
}

class Aulas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INGLÊS APP",
          style: TextStyle (
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
            ),
          ),
          Center(
            child: Text('ASSUNTOS',
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                fontSize: 30,
              ),
            ),
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("ALFABETO",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("NÚMEROS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("ANIMAIS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("FAMÍLIA",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("CORES",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("EXPRESSÕES",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));},
        child: Icon(
            Icons.account_circle
        ),
        backgroundColor: Colors.blue[500],
      ),
      backgroundColor: Colors.blue[300],
    );

  }
}

class Profile extends StatelessWidget {

  var nome;
  var cognome;
  var email;

  getTokenData() async{
    TokenService tokenService = new TokenService();
    tokenService.getDecodedToken()
        .then( (decodedToken) => {
      this.nome = decodedToken["name"],
      this.cognome = decodedToken["surname"],
      this.email = decodedToken["email"],
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  )
              ),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text(
                        "$nome",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$email",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "$cognome",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: (){},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.blue[500],Colors.blue[800]]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("EDITAR DADOS",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
          Container(
            width: 300.00,
            height: 20.00,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.blue[500],Colors.blue[800]]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("VOLTAR",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
          Container(
            width: 300.00,
            height: 20.00,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)
                ),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.red,Colors.redAccent]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text("DESCONECTAR",
                      style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                    ),
                  ),
                )
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue[300],
    );
  }




}

class Editar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INGLÊS APP",
          style: TextStyle (
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/bg.png"), fit: BoxFit.cover,),
            ),
          ),
          Center(
            child: Text('AULAS CRIADAS',
              style: TextStyle (
                fontWeight: FontWeight.bold,
                fontFamily: 'IndieFlower',
                fontSize: 30,
              ),
            ),
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("ALFABETO",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("NÚMEROS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("ANIMAIS",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("FAMÍLIA",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("CORES",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
          RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.blue[500],Colors.blue[800]]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("EXPRESSÕES",
                    style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));},
        child: Icon(
            Icons.account_circle
        ),
        backgroundColor: Colors.blue[500],
      ),
      backgroundColor: Colors.blue[300],
    );

  }
}

class DataTableDemo extends StatefulWidget {
  //
  DataTableDemo() : super();


  final String title = 'Editar aulas';

  @override
  DataTableDemoState createState() => DataTableDemoState();
}

class DataTableDemoState extends State<DataTableDemo> {
  List<Employee> _employees;
  GlobalKey<ScaffoldState> _scaffoldKey;
  // controller for the First Name TextField we are going to create.
  TextEditingController _firstNameController;
  // controller for the Last Name TextField we are going to create.
  TextEditingController _lastNameController;
  Employee _selectedEmployee;
  bool _isUpdating;
  String _titleProgress;

  @override
  void initState() {
    super.initState();
    _employees = [];
    _isUpdating = false;
    _titleProgress = widget.title;
    _scaffoldKey = GlobalKey(); // key to get the context to show a SnackBar
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _getEmployees();
  }

  // Method to update title in the AppBar Title
  _showProgress(String message) {
    setState(() {
      _titleProgress = message;
    });
  }

  _showSnackBar(context, message) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  _createTable() {
    _showProgress('Criando tabela...');
    Services.createTable().then((result) {
      if ('success' == result) {
        // Table is created successfully.
        _showSnackBar(context, result);
        _showProgress(widget.title);
      }
    });
  }

  // Now lets add an Employee
  _addEmployee() {
    if (_firstNameController.text.isEmpty || _lastNameController.text.isEmpty) {
      print('Campos vazios');
      return;
    }
    _showProgress('Adicionando aula...');
    Services.addEmployee(_firstNameController.text, _lastNameController.text)
        .then((result) {
      if ('success' == result) {
        _getEmployees(); // Refresh the List after adding each employee...
        _clearValues();
      }
    });
  }

  _getEmployees() {
    _showProgress('Carregando aulas...');
    Services.getEmployees().then((employees) {
      setState(() {
        _employees = employees;
      });
      _showProgress(widget.title); // Reset the title...
      print("Length ${employees.length}");
    });
  }

  _updateEmployee(Employee employee) {
    setState(() {
      _isUpdating = true;
    });
    _showProgress('Atualizando aulas...');
    Services.updateEmployee(
        employee.id, _firstNameController.text, _lastNameController.text)
        .then((result) {
      if ('success' == result) {
        _getEmployees(); // Refresh the list after update
        setState(() {
          _isUpdating = false;
        });
        _clearValues();
      }
    });
  }

  _deleteEmployee(Employee employee) {
    _showProgress('Apagando aula...');
    Services.deleteEmployee(employee.id).then((result) {
      if ('success' == result) {
        _getEmployees(); // Refresh after delete...
      }
    });
  }

  // Method to clear TextField values
  _clearValues() {
    _firstNameController.text = '';
    _lastNameController.text = '';
  }

  _showValues(Employee employee) {
    _firstNameController.text = employee.firstName;
    _lastNameController.text = employee.lastName;
  }

  // Let's create a DataTable and show the employee list in it.
  SingleChildScrollView _dataBody() {
    // Both Vertical and Horozontal Scrollview for the DataTable to
    // scroll both Vertical and Horizontal...
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text('ID'),
            ),
            DataColumn(
              label: Text('ASSUNTO'),
            ),
            DataColumn(
              label: Text('CONTEUDO'),
            ),
            // Lets add one more column to show a delete button
            DataColumn(
              label: Text('DELETAR'),
            )
          ],
          rows: _employees
              .map(
                (employee) => DataRow(cells: [
              DataCell(
                Text(employee.id),
                // Add tap in the row and populate the
                // textfields with the corresponding values to update
                onTap: () {
                  _showValues(employee);
                  // Set the Selected employee to Update
                  _selectedEmployee = employee;
                  setState(() {
                    _isUpdating = true;
                  });
                },
              ),
              DataCell(
                Text(
                  employee.firstName.toUpperCase(),
                ),
                onTap: () {
                  _showValues(employee);
                  // Set the Selected employee to Update
                  _selectedEmployee = employee;
                  // Set flag updating to true to indicate in Update Mode
                  setState(() {
                    _isUpdating = true;
                  });
                },
              ),
              DataCell(
                Text(
                  employee.lastName.toUpperCase(),
                ),
                onTap: () {
                  _showValues(employee);
                  // Set the Selected employee to Update
                  _selectedEmployee = employee;
                  setState(() {
                    _isUpdating = true;
                  });
                },
              ),
              DataCell(IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _deleteEmployee(employee);
                },
              ))
            ]),
          )
              .toList(),
        ),
      ),
    );
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_titleProgress), // we show the progress in the title...
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              _createTable();
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _getEmployees();
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _firstNameController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Assunto',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _lastNameController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Conteúdo',
                ),
              ),
            ),
            // Add an update button and a Cancel Button
            // show these buttons only when updating an employee
            _isUpdating
                ? Row(
              children: <Widget>[
                OutlineButton(
                  child: Text('UPDATE'),
                  onPressed: () {
                    _updateEmployee(_selectedEmployee);
                  },
                ),
                OutlineButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    setState(() {
                      _isUpdating = false;
                    });
                    _clearValues();
                  },
                ),
              ],
            )
                : Container(),
            Expanded(
              child: _dataBody(),
            ),
          ],


        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addEmployee();
        },
        child: Icon(Icons.add),
      )
    );

  }


}