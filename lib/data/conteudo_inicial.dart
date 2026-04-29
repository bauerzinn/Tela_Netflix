import 'dart:math';

import 'conteudo_textos.dart';

/// URLs e textos escolhidos uma vez ao abrir a tela.
class ConteudoInicial {
  ConteudoInicial({
    required this.urlDestaque,
    required this.urlsLinha1,
    required this.urlsLinha2,
    required this.tituloDestaque,
    required this.tagsDestaque,
  });

  final String urlDestaque;
  final List<String> urlsLinha1;
  final List<String> urlsLinha2;
  final String tituloDestaque;
  final String tagsDestaque;

  factory ConteudoInicial.gerar() {
    final r = Random();
    final s = DateTime.now().millisecondsSinceEpoch;
    return ConteudoInicial(
      urlDestaque: 'https://picsum.photos/seed/${s}hero/800/1080',
      urlsLinha1: List.generate(
        5,
        (i) => 'https://picsum.photos/seed/${s}a$i/280/420',
      ),
      urlsLinha2: List.generate(
        5,
        (i) => 'https://picsum.photos/seed/${s}b$i/280/420',
      ),
      tituloDestaque: titulosDestaque[r.nextInt(titulosDestaque.length)],
      tagsDestaque: linhasDeTags[r.nextInt(linhasDeTags.length)],
    );
  }
}
