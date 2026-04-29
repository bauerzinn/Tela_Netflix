import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'profile_avatar_icon.dart';

class NetflixBottomNav extends StatelessWidget {
  const NetflixBottomNav({
    super.key,
    required this.indiceSelecionado,
    required this.onTrocarAba,
  });

  final int indiceSelecionado;
  final ValueChanged<int> onTrocarAba;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 64,
      backgroundColor: AppColors.bottomBar,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      selectedIndex: indiceSelecionado,
      onDestinationSelected: onTrocarAba,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: Colors.white54),
          selectedIcon: Icon(Icons.home, color: Colors.white),
          label: 'Início',
        ),
        NavigationDestination(
          icon: Icon(Icons.sports_esports_outlined, color: Colors.white54),
          selectedIcon: Icon(Icons.sports_esports, color: Colors.white),
          label: 'Jogos',
        ),
        NavigationDestination(
          icon: Icon(Icons.video_library_outlined, color: Colors.white54),
          selectedIcon: Icon(Icons.video_library, color: Colors.white),
          label: 'Novidades',
        ),
        NavigationDestination(
          icon: ProfileAvatarIcon(),
          selectedIcon: ProfileAvatarIcon(selecionado: true),
          label: 'Minha Netflix',
        ),
      ],
    );
  }
}
