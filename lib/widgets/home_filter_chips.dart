import 'package:flutter/material.dart';

class HomeFilterChips extends StatelessWidget {
  const HomeFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _chip('Séries'),
          const SizedBox(width: 10),
          _chip('Filmes'),
          const SizedBox(width: 10),
          _chip('Categorias', trailing: Icons.keyboard_arrow_down),
        ],
      ),
    );
  }

  Widget _chip(
    String texto, {
    IconData? trailing,
  }) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white54),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(texto),
          if (trailing != null) ...[
            const SizedBox(width: 2),
            Icon(trailing, size: 18),
          ],
        ],
      ),
    );
  }
}
