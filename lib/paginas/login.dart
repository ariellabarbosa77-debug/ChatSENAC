import 'package:flutter/material.dart';
import 'package:primeiro_app/paginas/cadastro.dart';
import 'package:primeiro_app/paginas/dashboard.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();


  void verificarLogin() {

    if (emailController.text == "teste@email.com" &&
        senhaController.text == "123456") {

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const Dashboard(),
        ),
            (route) => false,
      );

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email ou senha incorretos!"),
          backgroundColor: Colors.red,
        ),
      );

    }
  }


  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),


          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,


            children: [

              // Logo
              Row(
                children: [

                  const FlutterLogo(
                    size: 18,
                  ),

                  const SizedBox(width: 8),

                  const Text(
                    "ChatSENAC",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),


              const SizedBox(height: 20),


              Text(
                "Entre na sua conta",
                style: Tipografia.h1,
              ),


              const SizedBox(height: 6),


              Text(
                "Coloque o seu email e senha para logar",
                style: Tipografia.subtitulo,
              ),


              const SizedBox(height: 25),


              Text(
                "Email",
                style: Tipografia.subtitulo,
              ),


              const SizedBox(height: 6),


              TextField(

                controller: emailController,

                decoration: InputDecoration(

                  hintText: "Digite seu email",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),

              ),


              const SizedBox(height: 13),


              Text(
                "Senha",
                style: Tipografia.subtitulo,
              ),


              const SizedBox(height: 6),


              TextField(

                controller: senhaController,

                obscureText: true,

                decoration: InputDecoration(

                  hintText: "********",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),

              ),


              const SizedBox(height: 10),


              Text(
                "Esqueceu a senha?",
                textAlign: TextAlign.right,
                style: Tipografia.link,
              ),


              const SizedBox(height: 20),


              ElevatedButton(

                onPressed: verificarLogin,


                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.blue,

                  foregroundColor: Colors.white,


                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),

                  ),

                ),


                child: const Text("Entrar"),

              ),


              const SizedBox(height: 15),


              const Row(

                children: [

                  Expanded(
                    child: Divider(),
                  ),


                  Padding(

                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: Text("Ou"),

                  ),


                  Expanded(
                    child: Divider(),
                  ),

                ],

              ),


              const SizedBox(height: 15),


              // Google

              ElevatedButton(

                onPressed: () {},


                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.white,

                  foregroundColor: Colors.black,


                  side: const BorderSide(
                    color: Colors.grey,
                  ),


                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),

                  ),

                ),


                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,


                  children: [

                    Image.asset(

                      "assets/imagens/google-icon.png",

                      height: 22,

                      width: 22,

                    ),


                    const SizedBox(width: 10),


                    const Text(
                      "Continuar com o Google",
                    ),

                  ],

                ),

              ),


              const SizedBox(height: 10),


              // Facebook

              ElevatedButton(

                onPressed: () {},


                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.white,

                  foregroundColor: Colors.black,


                  side: const BorderSide(
                    color: Colors.grey,
                  ),


                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(10),

                  ),

                ),


                child: Row(

                  mainAxisAlignment: MainAxisAlignment.center,


                  children: [

                    Image.asset(

                      "assets/imagens/facebook-icon.png",

                      height: 22,

                      width: 22,

                    ),


                    const SizedBox(width: 10),


                    const Text(
                      "Continuar com o Facebook",
                    ),

                  ],

                ),

              ),


              const SizedBox(height: 20),


              Row(

                mainAxisAlignment: MainAxisAlignment.center,


                children: [

                  Text(
                    "Não tem uma conta?",
                    style: Tipografia.subtitulo,
                  ),


                  const SizedBox(width: 5),


                  InkWell(

                    onTap: () {

                      Navigator.push(

                        context,

                        MaterialPageRoute(

                          builder: (context) => const Cadastro(),

                        ),

                      );

                    },


                    child: Text(

                      "Cadastre-se",

                      style: Tipografia.link,

                    ),

                  ),

                ],

              ),

            ],

          ),

        ),

      ),

    );

  }
}