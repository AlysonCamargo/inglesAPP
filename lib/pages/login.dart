import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import './../colors/colors.dart';
import './../api_provider.dart';
import './../pages/home.dart';
import '../pages/register.dart';
import 'package:InglesAPP/pages/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InglesApp',
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
  TextEditingController _crtlEmail = TextEditingController();
  TextEditingController _crtlPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final success = SnackBar(content: Text('Login realizado!'));
  final error = SnackBar(content: Text('Senha ou email incorreto!'));
  final serverError = SnackBar(content: Text('Não foi possível conectar ao servidor!'));
  final ipError = SnackBar(content: Text('Você precisa inserir um IP nas configurações'));

  ApiProvider apiProvider = ApiProvider();


  Future doLogin() async {
    final prefs = await SharedPreferences.getInstance();

// Try reading data from the counter key. If it does not exist, return 0.
    final ind = prefs.getString('indirizzo') ?? "";
    if (_formKey.currentState.validate()) {
      if(ind != ""){
        try {
          var res = await apiProvider.doLogin(
              _crtlEmail.text, _crtlPassword.text, ind);
          if (res.statusCode == 200) {
            var jsonRes = json.decode(res.body);
            var token = jsonRes['token'];
            prefs.setString("token", token);

            Navigator.of(context).push( //pushReplacement
                MaterialPageRoute(builder: (context) => HomePage()));
          } else {
            Scaffold.of(context).showSnackBar(error);
          }
        } catch (err) {
          print(err);
          Scaffold.of(context).showSnackBar(serverError);
        }
      } else {
        Scaffold.of(context).showSnackBar(ipError);
      }
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "InglêsAPP",
                        style: new TextStyle(
                            fontFamily: 'Mont',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: GestureDetector(
                          onTap: () {
                            print("onTap called.");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
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
                          'assets/images/login.png',
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
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 10),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.red,
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Insira um e-mail!';
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
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
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
                          padding:
                              EdgeInsets.only(left: 10, right: 10, top: 20),
                          child: Theme(
                            data: new ThemeData(
                              primaryColor: accentColor,
                              primaryColorDark: Colors.red,
                            ),
                            child: ButtonTheme(
                              minWidth: width,
                              height: 50.0,
                              child: RaisedButton(
                                  onPressed: () => doLogin(),
                                  child: const Text('LOGIN',
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
                                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register())),
                                child: Text("Novo por aqui? Clique aqui!",
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
