import 'package:flutter/material.dart';
import './../colors/colors.dart';
import './../api_provider.dart';
import '../pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';


class Register extends StatelessWidget {
  const Register({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InglesAPP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: backgroundColor,
      ),
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  BodyWidgetState createState() {
    return new BodyWidgetState();
  }
}

class BodyWidgetState extends State<BodyWidget> {
  TextEditingController _crtlName = TextEditingController();
  TextEditingController _crtlSurname = TextEditingController();
  TextEditingController _crtlEmail = TextEditingController();
  TextEditingController _crtlPassword = TextEditingController();
  TextEditingController _ctrlIp = TextEditingController();
  final success = SnackBar(content: Text('Login realizado!'));
  final error = SnackBar(content: Text('Email ou senha incorreta!'));
  final serverError = SnackBar(content: Text('Não foi possível conectar ao servidor!'));
  final ipError = SnackBar(content: Text('Você precisa inserir um IP nas configurações'));

  final _formKey = GlobalKey<FormState>();

  ApiProvider apiProvider = ApiProvider();

  Future doRegistration() async {
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it does not exist, return 0.
    final ind = prefs.getString('indirizzo') ?? "";
    if (_formKey.currentState.validate()) {
      if(ind != ""){
      try {
        var res = await apiProvider.doRegistration(
            _crtlName.text,
            _crtlSurname.text,
            _crtlEmail.text,
            _crtlPassword.text,
            ind);
        if (res.statusCode == 200) {
          Scaffold.of(context).showSnackBar(success);
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Login()));
        } else {
          print(res.statusCode);
          Scaffold.of(context).showSnackBar(error);
        }
      } catch (err) {
        print(err);
        Scaffold.of(context).showSnackBar(serverError);
      }
    }
    } else {
      Scaffold.of(context).showSnackBar(ipError);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: heigth / 14, left: width / 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "InglesAPP",
                        style: new TextStyle(
                            fontFamily: 'Mont',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: heigth / 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Image.asset(
                          'assets/images/popcorn.png',
                          scale: 5.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width / 7),
                  child: Container(
                    width: width,
                    height: heigth,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.blue,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Insira um nome!';
                                }
                              },
                              controller: _crtlName,
                              style:
                              TextStyle(fontSize: 20.0, color: accentColor),
                              decoration: new InputDecoration(
                                  labelText: "Nome",
                                  fillColor: accentColor,
                                  prefixIcon: const Icon(
                                    Icons.account_circle,
                                    color: Color(0xFF08498A),
                                  ),
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                      new BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.blue,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Insira um nome de usuário!';
                                }
                              },
                              controller: _crtlSurname,
                              style:
                              TextStyle(fontSize: 20.0, color: accentColor),
                              decoration: new InputDecoration(
                                  labelText: "Nome de usuário",
                                  fillColor: accentColor,
                                  prefixIcon: const Icon(
                                    Icons.assignment_ind,
                                    color: Color(0xFF08498A),
                                  ),
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                      new BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.red,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Insira um email!';
                                }
                              },
                              controller: _crtlEmail,
                              style:
                                  TextStyle(fontSize: 20.0, color: accentColor),
                              decoration: new InputDecoration(
                                  labelText: "Email",
                                  fillColor: accentColor,
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color(0xFF08498A),
                                  ),
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          new BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.red,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Insira uma senha!';
                                }
                              },
                              controller: _crtlPassword,
                              obscureText: true,
                              style:
                                  TextStyle(fontSize: 20.0, color: accentColor),
                              decoration: new InputDecoration(
                                  labelText: "Senha",
                                  fillColor: accentColor,
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Color(0xFF08498A),
                                  ),
                                  border: new OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          new BorderSide(color: Colors.white))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.red,
                            ),
                            child: ButtonTheme(
                              minWidth: width,
                              height: 50.0,
                              child: RaisedButton(
                                  onPressed: () => doRegistration(),
                                  child: const Text('REGISTRAR',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'calibre',
                                          letterSpacing: 1.5,
                                          fontSize: 20)),
                                  color: accentColor,
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0))),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: new FlatButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login())),
                                child: Text("Já é registrado? Clique aqui!",
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                      fontSize: 20,
                                      color: accentColor,
                                      fontFamily: 'calibre',
                                      decoration: TextDecoration.underline,
                                    )),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
