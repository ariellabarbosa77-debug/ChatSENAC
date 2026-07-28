import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Login(),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              FlutterLogo(size: 18),
              SizedBox(width: 8),
              Text(
                "ChatSENAC",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          // Levanta o título
          SizedBox(height: 20),

          // Títulos
          Text(
            "Entre na sua conta",
            style: Tipografia.h1,
          ),

          SizedBox(height: 6),

          Text(
            "Coloque o seu email e senha para logar",
            style: Tipografia.subtitulo,
          ),

          SizedBox(height: 25),

          // Campos
          Text(
            "Email",
            style: Tipografia.subtitulo,
          ),

          SizedBox(height: 6),

          TextField(
            decoration: InputDecoration(
              hintText: "Digite seu email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          SizedBox(height: 13),

          Text(
            "Senha",
            style: Tipografia.subtitulo,
          ),

          SizedBox(height: 6),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "********",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          SizedBox(height: 10),

          InkWell(
            child: Text(
              "Esqueceu a senha?",
              textAlign: TextAlign.right,
              style: Tipografia.link,
            ),
          ),

          SizedBox(height: 20),

          // Botões
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text("Entrar"),
          ),

          SizedBox(height: 15),

          Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Ou"),
              ),
              Expanded(child: Divider()),
            ],
          ),

          SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text("Continuar com o Google"),
          ),

          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              side: BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text("Continuar com o Facebook"),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Não tem uma conta?",
                style: Tipografia.subtitulo,
              ),

              SizedBox(width: 5),

              InkWell(
                child: Text(
                  "Cadastre-se",
                  style: Tipografia.link,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}