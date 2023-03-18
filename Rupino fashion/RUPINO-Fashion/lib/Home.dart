import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _cadastrar = false;

  void _enviarFormulario() {
    print('Botão enviar pressionado!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      // title: Text("Rupino fashion"),
      // backgroundColor: Color.fromARGB(225, 6, 97, 39),
      //),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1556906781-9a412961c28c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 0, top: 0),
                  child: Image.asset(
                    'assets/images/mika.png',
                    width: 390,
                    height: 350,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Usuário",
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                      ),
                      prefixIcon: Icon(Icons.person,
                          color: Color.fromARGB(255, 20, 14, 14)),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                    ),
                    prefixIcon:
                        Icon(Icons.lock, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Logar", style: TextStyle(color: Colors.white)),
                    Switch(
                      value: _cadastrar,
                      onChanged: (bool valor) {
                        setState(() {
                          _cadastrar = valor;
                        });
                      },
                    ),
                    Text("Cadastrar", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    //...resto do código
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _enviarFormulario,
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(225, 6, 97, 39),
                        minimumSize: Size(double.infinity, 60),
                      ),
                      child: Text(
                        'Enviar',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromARGB(224, 252, 255, 253),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    InkWell(
                      onTap: () {
                        print('Botão esqueceu a senha pressionado!');
                      },
                      child: Text(
                        'Esqueceu a senha?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.facebook),
                          color: Colors.white,
                          onPressed: () {
                            print('Login com o Facebook pressionado!');
                          },
                        ),
                        SizedBox(width: 16),
                        IconButton(
                          icon: Icon(Icons.g_translate),
                          color: Colors.white,
                          onPressed: () {
                            print('Login com o Google pressionado!');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
