import 'package:flutter/material.dart';

class ProfileAvatarIcon extends StatelessWidget {
  const ProfileAvatarIcon({super.key, this.selecionado = false});

  final bool selecionado;

  @override
  Widget build(BuildContext context) {
    final cor = selecionado ? Colors.white : Colors.white54;
    return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: cor, width: 1.5),
        color: Colors.grey.shade800,
      ),
      child: Icon(Icons.person, size: 16, color: cor),
    );
  }
}
