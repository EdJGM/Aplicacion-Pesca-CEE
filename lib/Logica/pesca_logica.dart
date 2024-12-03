class PescaLogica {
  int total = 0;
  int limite;

  PescaLogica(this.limite);

  String ponerCaptura(int capturaPeso) {
    if (capturaPeso == 0) {
      return "Programa terminado por el usuario.";
    }

    total += capturaPeso;

    if (total >= limite) {
      return "LIMITE SUPERADO en ${total - limite} Kg!";
    } else {
      return "Total pescado por ahora: $total Kg.";
    }
  }
}