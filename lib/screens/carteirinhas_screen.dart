import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/carteirinha.dart';
import '../providers/carteirinha_manager.dart';
import 'package:flutter/foundation.dart'; // Adicione esta linha

class CarteirinhasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carteirinhas'),
      ),
      body: Consumer<CarteirinhaManager>(
        builder: (context, carteirinhaManager, child) {
          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: carteirinhaManager.carteirinhas.length,
            itemBuilder: (context, index) {
              final carteirinha = carteirinhaManager.carteirinhas[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: carteirinha.fotoUrl != null
                      ? kIsWeb
                          ? Image.network(carteirinha.fotoUrl!, width: 50, height: 50)
                          : Image.asset(carteirinha.fotoUrl!, width: 50, height: 50)
                      : Icon(Icons.person, size: 50),
                  title: Text(
                    carteirinha.nome,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    carteirinha.categoria,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalhesCarteirinhaScreen(carteirinha: carteirinha),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetalhesCarteirinhaScreen extends StatelessWidget {
  final Carteirinha carteirinha;

  DetalhesCarteirinhaScreen({required this.carteirinha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Carteirinha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome: ${carteirinha.nome}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Categoria: ${carteirinha.categoria}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            carteirinha.fotoUrl != null
                ? kIsWeb
                    ? Image.network(carteirinha.fotoUrl!, height: 150)
                    : Image.asset(carteirinha.fotoUrl!, height: 150)
                : Icon(Icons.person, size: 150),
          ],
        ),
      ),
    );
  }
}