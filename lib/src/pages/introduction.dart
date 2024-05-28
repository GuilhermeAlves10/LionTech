import 'package:app_gooday/src/componets/color_style.dart';
import 'package:app_gooday/src/componets/intro_page.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});
  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> with TickerProviderStateMixin {
  late TabPageSelector _tabPageSelector; 
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    _tabPageSelector = TabPageSelector(
      controller: TabController(length: 4, vsync: this),
      selectedColor: ColorStyle.primary,
      color: ColorStyle.secondary,
      borderStyle: BorderStyle.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    void goToNextPage() {
      _pageController.nextPage(
        duration: Durations.medium4, 
        curve: Curves.easeIn
      );
    }

    return Scaffold(
      backgroundColor: ColorStyle.primary,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
            if (_pageController.page == 0) {
              Navigator.pop(context);
            } else {
              _pageController.previousPage(
                duration: Durations.medium4, 
                curve: Curves.easeIn
              );
            }
          },
        ),
        backgroundColor: ColorStyle.primary,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _tabPageSelector.controller?.index = index;
        },
        children: [
          IntroPage(
            image: Image.asset('lib/assets/Tec1.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'A Tecnologia move o mundo',
            description: 'A TECNOLOGIA VAI REINVENTAR O NEGÓCIO, MAS AS RELAÇÕES HUMANAS CONTINUARÃO A SER A CHAVE PARA O SUCESSO',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assets/Tec2.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'A Tecnologia move o mundo',
            description: 'A tecnologia tem mais sentido quando é para melhorar a experiência do cliente',
            onButtonPressed: goToNextPage
          ),
          IntroPage(
            image: Image.asset('lib/assets/Tec3.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'A tecnologia move o mundo',
            description: 'Vamo pro baile ouvir uma música e come Mc Donalds',
            onButtonPressed: goToNextPage,
          ),
          IntroPage(
            image: Image.asset('lib/assets/Tec4.jpg'),
            tabPageSelector: _tabPageSelector,
            title: 'A tecnologia move o mundo',
            description: 'Bar',
            onButtonPressed: goToNextPage,
          ),
        ],
      ),
    );
  }
}