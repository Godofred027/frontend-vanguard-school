import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intranet_vanguard_school/pages/login_page.dart';
import 'package:intranet_vanguard_school/pages/splash_screen.dart';
import 'package:intranet_vanguard_school/pages/widgets/header_widget.dart';

import 'forgot_password_page.dart';
import 'forgot_password_verification_page.dart';
import 'registration_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  double _drawerIconSize = 24;
  double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Perfil",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 73, 114, 197),
                Color.fromARGB(255, 39, 90, 190)
              ])),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              top: 16,
              right: 16,
            ),
            child: Stack(
              children: <Widget>[
                Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                0.0,
                1.0
              ],
                  colors: [
                Colors.white.withOpacity(0.2),
                Colors.grey.withOpacity(0.5),
              ])),
          child: ListView(
            children: [
              Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.0, 1.0],
                        colors: [
                          Colors.blue,
                          Colors.blueAccent,
                        ],
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Intranet",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey[100],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container()
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: _drawerIconSize,
                  color: Colors.black,
                ),
                title: Text(
                  'Mi Perfil',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SplashScreen(title: "Splash Screen")));
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(Icons.calendar_month,
                    size: _drawerIconSize, color: Colors.black),
                title: Text(
                  'Horario',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(Icons.book,
                    size: _drawerIconSize, color: Color.fromRGBO(0, 0, 0, 1)),
                title: Text(
                  'Cursos Asignados',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationPage()),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.check_circle,
                  size: _drawerIconSize,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                title: Text(
                  'Notas y Asistencias',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.quiz,
                  size: _drawerIconSize,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                title: Text(
                  'Test',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordVerificationPage()),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  size: _drawerIconSize,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                title: Text(
                  'Chat',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordVerificationPage()),
                  );
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  size: _drawerIconSize,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 17,
                      color: Color(Colors.grey.value),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
              Divider(
                color: Colors.black,
                height: 2,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 100,
              child: HeaderWidget(100, false, Icons.house_rounded),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ricardo Andres Paredes Cornejo',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Estudiante',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Informacion Personal",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.class_rounded),
                                          title: Text("Nombres y Apellidos"),
                                          subtitle: Text(
                                              'PAREDES CORNEJO, RICARDO ANDRES'),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.calendar_today),
                                          title: Text("Fecha de Nacimiento"),
                                          subtitle: Text("07/06/2001"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.assignment_ind),
                                          title: Text("DNI"),
                                          subtitle: Text("72436865"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.male),
                                          title: Text("Sexo"),
                                          subtitle: Text("Masculino"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.app_registration),
                                          title: Text("Inscrito"),
                                          subtitle: Text("12/03/2021"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.star_rate),
                                          title: Text("PREMIOS"),
                                          subtitle:
                                              Image.asset('assets/premios.png'),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
