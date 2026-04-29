import 'package:flutter/material.dart';

import '../data/conteudo_inicial.dart';
import '../theme/app_colors.dart';
import '../widgets/featured_hero_card.dart';
import '../widgets/home_filter_chips.dart';
import '../widgets/home_header.dart';
import '../widgets/horizontal_poster_list.dart';
import '../widgets/netflix_bottom_nav.dart';
import '../widgets/section_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _abaInferior = 0;
  late final ConteudoInicial _conteudo;

  @override
  void initState() {
    super.initState();
    _conteudo = ConteudoInicial.gerar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const HomeFilterChips(),
              const SizedBox(height: 12),
              FeaturedHeroCard(
                urlImagem: _conteudo.urlDestaque,
                titulo: _conteudo.tituloDestaque,
                tags: _conteudo.tagsDestaque,
              ),
              const SizedBox(height: 24),
              const SectionTitle('Principais escolhas do dia para você'),
              HorizontalPosterList(urls: _conteudo.urlsLinha1),
              const SizedBox(height: 24),
              const SectionTitle('Porque você assistiu a séries populares'),
              HorizontalPosterList(urls: _conteudo.urlsLinha2),
              const SizedBox(height: 88),
            ],
          ),
        ),
      ),

      //aqui é o bottom navigation bar, aonde clica muda a cor/aba
      bottomNavigationBar: NetflixBottomNav(
        indiceSelecionado: _abaInferior,
        onTrocarAba: (i) => setState(() => _abaInferior = i),
      ),
    );
  }
}
