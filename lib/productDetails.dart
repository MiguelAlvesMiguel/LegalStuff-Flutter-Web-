import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navbar.dart';

class ProductDetails extends StatelessWidget {
  final String productID;
  const ProductDetails({super.key, required this.productID});

  @override
  Widget build(BuildContext context) {
    // You can get the product data from your database or API using the productID
    // For simplicity, we will use some dummy data
    final product = {
      'name': 'Óleo de Eucalipto',
      'image':
          'https://lojaprojetoverao.vteximg.com.br/arquivos/ids/168042-1000-1000/oleo-essencial-eucalipto-globulus-10ml.jpg?v=637018488117500000',
      'description':
          'Este óleo essencial de eucalipto é 100% natural e biológico, extraído das folhas da árvore de eucalipto globulus. Tem um aroma fresco e balsâmico, que ajuda a aliviar as vias respiratórias e a combater as infecções. Pode ser usado em massagens, inalações, difusores ou banhos, para aproveitar as suas propriedades anti-inflamatórias, antissépticas, expectorantes e descongestionantes. A garrafa é pequena e prática, com 30 ml de capacidade e um conta-gotas integrado.'
    };

    return Scaffold(
      // Use a CustomScrollView to create a flexible layout
      appBar: MyAppBar(),
      body: Center(
        child: Column(children: [
          Container(
            height: 300,
            child: Image.network(product['image']!),
          ),
          Text(product['name']!,
              style: GoogleFonts.acme(fontSize: 40, color: Colors.black)),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(product['description']!,
                style: GoogleFonts.acme(
                    fontSize: 19, color: Color.fromARGB(255, 114, 110, 110))),
          ),
        ]),
      ),
    );
  }
}
