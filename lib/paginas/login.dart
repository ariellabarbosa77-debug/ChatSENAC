import 'package:flutter/material.dart';
import 'package:primeiro_app/paginas/cadastro.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Row(
                children: [
                  const FlutterLogo(size: 18),
                  const SizedBox(width: 8),
                  Text(
                    "ChatSENAC",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Título
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

              // Campo Email
              Text(
                "Email",
                style: Tipografia.subtitulo,
              ),

              const SizedBox(height: 6),

              TextField(
                decoration: InputDecoration(
                  hintText: "Digite seu email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 13),

              // Campo Senha
              Text(
                "Senha",
                style: Tipografia.subtitulo,
              ),

              const SizedBox(height: 6),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "********",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              InkWell(
                onTap: () {
                  // Recuperação de senha
                },
                child: Text(
                  "Esqueceu a senha?",
                  textAlign: TextAlign.right,
                  style: Tipografia.link,
                ),
              ),

              const SizedBox(height: 20),

              // Botão Entrar
              ElevatedButton(
                onPressed: () {
                  // Login
                },
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
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Ou"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              const SizedBox(height: 15),

              // Botão Google
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/imagens/google-icon.png",
                      height: 18,
                    ),
                    const SizedBox(width: 6),
                    const Text("Continuar com o Google"),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Botão Facebook
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/imagens/facebook-icon.png",
                      height: 18,
                    ),
                    const SizedBox(width: 6),
                    const Text("Continuar com o Facebook"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Link Cadastro
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