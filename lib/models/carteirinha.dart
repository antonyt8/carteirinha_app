class Carteirinha {
  final String nome;
  final String categoria;
  final String? fotoUrl;

  Carteirinha({
    required this.nome,
    required this.categoria,
    this.fotoUrl,
  });
}