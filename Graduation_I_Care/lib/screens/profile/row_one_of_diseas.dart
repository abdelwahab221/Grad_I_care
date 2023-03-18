import 'package:flutter/material.dart';
import 'package:flutter_application_1/fonts/font.dart';

class RowOne extends StatefulWidget {
  const RowOne({Key? key}) : super(key: key);

  @override
  State<RowOne> createState() => _RowOneState();
}

class _RowOneState extends State<RowOne> {
  int _selectedIndex = -1; // -1 represents no selection

  void _onCardTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool bones = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _onCardTapped(0),
              child: Card(
                color: _selectedIndex == 0 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/icon-neurology.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      const Text(
                        'Neurology',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onCardTapped(1);
                setState(() {
                  bones = true;
                });
              },
              child: Card(
                color: _selectedIndex == 1 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/icon-bones.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      const Text(
                        'Bones',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(2),
              child: Card(
                color: _selectedIndex == 2 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/icon-oncology.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      const Text(
                        'Oncology',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(3),
              child: Card(
                color: _selectedIndex == 3 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/image-21.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Otorhinolaryngology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _onCardTapped(4),
              child: Card(
                color: _selectedIndex == 4 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/image-23.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Ophthalmology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(5),
              child: Card(
                color: _selectedIndex == 5 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/rectangle-35.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Cardiovascular',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(6),
              child: Card(
                color: _selectedIndex == 6 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/images-removebg-preview-1.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Pulmonology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(7),
              child: Card(
                color: _selectedIndex == 7 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/image-22.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Renal Medicine',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _onCardTapped(8),
              child: Card(
                color: _selectedIndex == 8 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/removebg-preview-1.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Gastroenterology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(9),
              child: Card(
                color: _selectedIndex == 9 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/page-1/images/icon-urology.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Urology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(10),
              child: Card(
                color: _selectedIndex == 10 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/icon-dermatology.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Dermatology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _onCardTapped(11),
              child: Card(
                color: _selectedIndex == 11 ? Colors.grey[300] : Colors.white,
                child: SizedBox(
                  width: 150,
                  height: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/page-1/images/image-24.png",
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                      Text(
                        'Gynaecology',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Work Sans',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4a4b4d),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
