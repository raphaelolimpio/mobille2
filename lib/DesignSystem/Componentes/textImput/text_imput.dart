import 'package:flutter/material.dart';

class TextImput extends StatelessWidget {
  const TextImput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imput Text"),
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //caixa habilitada com icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    //icone no lado direito
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    hintText: "habilitada e com icone",
                  ),
                ),
              ),
              //caixa habilitada sem icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "caixa Habilitada e sem icone",
                  ),
                ),
              ),
              //caixa desailitada com icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  //desabilitando o input
                  enabled: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.block),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    //borda desabilitada
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: "habilitada e com icone",
                  ),
                ),
              ),
              //caixa desabilitada sem icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    labelText: "Desabilitada e sem icone",
                  ),
                ),
              ),
              //caixa erro com icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.warning),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    hintText: "Caixa de erro com icone",
                  ),
                ),
              ),
              //caixa erro sem icone
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    labelText: "Caixa de erro sem Icone",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
