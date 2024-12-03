import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Logica/pesca_logica.dart';

class PescarPantalla extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PescarPantallaState();
}

class _PescarPantallaState extends State<PescarPantalla> {
  final TextEditingController _limiteController = TextEditingController();
  final TextEditingController _capturaController = TextEditingController();
  PescaLogica? _pescaLogica;
  String _mensage = '';

  void _ponerLimite() {
    final int limite = int.tryParse(_limiteController.text) ?? 0;
    if (limite <= 0) {
      setState(() {
        _mensage = 'Por favor, ingrese un límite válido mayor a 0.';
      });
      return;
    }
    setState(() {
      _pescaLogica = PescaLogica(limite);
      _mensage = 'Limite establecido en $limite Kg. (Presione 0 para finalizar)';
    });
  }

  void _ponerCaptura() {
    if (_pescaLogica == null) return;

    final int pesoCaptura = int.tryParse(_capturaController.text) ?? -1;
    if (pesoCaptura < 0) {
      setState(() {
        _mensage = 'Por favor, ingrese un peso de captura válido.';
      });
      return;
    }
    setState(() {
      _mensage = _pescaLogica!.ponerCaptura(pesoCaptura);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La pesca en la CEE', style: TextStyle(color: Colors.white, fontSize: 20)),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.work, size: 50, color: Colors.blue),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _limiteController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.scale, color: Colors.blue),
                    hintText: 'Limite de Kg. de pesca permitidos',
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _ponerLimite,
                  child: const Text('Establecer Limite'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _capturaController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.work, color: Colors.blue),
                    hintText: 'Ingresa los Kg. pescados ahora',
                    hintStyle: const TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _ponerCaptura,
                  child: const Text('Agregar Captura'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _mensage,
                  style: TextStyle(
                    color: _mensage.contains('LIMITE SUPERADO') ? Colors.red : Colors.black,
                    fontWeight: FontWeight.bold,
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