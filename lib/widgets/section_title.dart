import 'package:flutter/material.dart';

//componentinho para não repetir padding + estilo toda vez que você cria um título acima das listas.

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Text(
        texto,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
      ),
    );
  }
}
