import 'package:flutter/material.dart';

/// Carrega asset local ou URL.
///
/// [redeTamanhoPoster] / [cartaoDestaque] controlam o tamanho da decodificação.
class AppImage extends StatelessWidget {
  const AppImage(
    this.caminho, {
    super.key,
    this.redeTamanhoPoster = false,
    this.cartaoDestaque = false,
  });

  final String caminho;
  final bool redeTamanhoPoster;
  final bool cartaoDestaque;

  @override
  Widget build(BuildContext context) {
    final dpr = MediaQuery.devicePixelRatioOf(context);
    int? cw;
    int? ch;
    if (redeTamanhoPoster) {
      cw = (140 * dpr).round();
      ch = (210 * dpr).round();
    } else if (cartaoDestaque) {
      final w = MediaQuery.sizeOf(context).width;
      cw = ((w - 32) * dpr).round().clamp(360, 1600);
      ch = (cw * 1.35).round();
    }

    if (caminho.startsWith('http')) {
      return Image.network(
        caminho,
        fit: BoxFit.cover,
        cacheWidth: cw,
        cacheHeight: ch,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: Colors.grey.shade900,
            alignment: Alignment.center,
            child: SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.red.shade400,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => Container(
          color: Colors.grey.shade900,
          alignment: Alignment.center,
          child: Icon(Icons.wifi_off_outlined, color: Colors.grey.shade500),
        ),
      );
    }
    return Image.asset(
      caminho,
      fit: BoxFit.cover,
      cacheWidth: cw,
      cacheHeight: ch,
      errorBuilder: (context, error, stackTrace) => Container(
        color: Colors.grey.shade800,
        alignment: Alignment.center,
        child: const Icon(Icons.broken_image_outlined, color: Colors.white38),
      ),
    );
  }
}
