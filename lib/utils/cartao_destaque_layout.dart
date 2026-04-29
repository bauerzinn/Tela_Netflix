import 'package:flutter/material.dart';

/// Largura útil do cartão em destaque (evita valor negativo no 1º frame).
//serve para calcular a largura “utilizável” do card de destaque (hero) de um jeito seguro/responsivo.
double larguraCartaoDestaque(BoxConstraints constraints, BuildContext context) {
  var w = constraints.maxWidth;
  if (!w.isFinite || w <= 0) {
    w = MediaQuery.sizeOf(context).width;
  }
  if (w <= 0) {
    w = 360;
  }
  const margemHorizontal = 32.0;
  return (w - margemHorizontal).clamp(120.0, double.infinity);
}
