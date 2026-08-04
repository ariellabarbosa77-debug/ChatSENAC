import 'package:flutter/material.dart';
import 'package:primeiro_app/utilitarios/tipografia.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController =
  TextEditingController();


  void cadastrar() {

    if (nomeController.text.isEmpty ||
        emailController.text.isEmpty ||
        senhaController.text.isEmpty ||
        confirmarSenhaController.text.isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Preencha todos os campos!"),
          backgroundColor: Colors.red,
        ),
      );

      return;
    }


    if (senhaController.text != confirmarSenhaController.text) {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("As senhas não são iguais!"),
          backgroundColor: Colors.red,
        ),
      );

      return;
    }


    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Cadastro realizado com sucesso!"),
        backgroundColor: Colors.green,
      ),
    );


    Navigator.pop(context);
  }


  @override
  void dispose() {
    nomeController.dispose();
    emailController.dispose();
    senhaController.dispose();
    confirmarSenhaController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),

          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text("Cadastro"),

        centerTitle: true,

        elevation: 0,
      ),


      body: SingleChildScrollView(

        padding: const EdgeInsets.all(24),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            const SizedBox(height: 20),


            Text(
              "Crie sua conta",
              style: Tipografia.h1,
            ),


            const SizedBox(height: 6),


            Text(
              "Preencha os dados abaixo para se cadastrar",
              style: Tipografia.subtitulo,
            ),


            const SizedBox(height: 25),


            Text(
              "Nome",
              style: Tipografia.subtitulo,
            ),


            const SizedBox(height: 6),


            TextField(

              controller: nomeController,

              decoration: InputDecoration(

                hintText: "Digite seu nome",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),


            const SizedBox(height: 13),


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


            const SizedBox(height: 13),


            Text(
              "Confirmar senha",
              style: Tipografia.subtitulo,
            ),


            const SizedBox(height: 6),


            TextField(

              controller: confirmarSenhaController,

              obscureText: true,

              decoration: InputDecoration(

                hintText: "********",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),


            const SizedBox(height: 25),


            ElevatedButton(

              onPressed: cadastrar,

              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.blue,

                foregroundColor: Colors.white,

                minimumSize: const Size(double.infinity, 50),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),


              child: const Text("Cadastrar"),

            ),

          ],
        ),
      ),
    );
  }
}