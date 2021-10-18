import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            //TODO 5: Add dark overlay BoxDecoration
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            //TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.book, color: Colors.white, size: 40),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2),
                  SizedBox(height: 30),
                ],
              ),
            ),
            //TODO 7: Add Center widget with Chip widget children
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Maize',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Wheet',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'Greens',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                      label: Text(
                        'Vegan',
                        style: FooderlichTheme.darkTextTheme.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('Deleted');
                      }),
                  Chip(
                      label: Text(
                        'Carrots',
                        style: FooderlichTheme.darkTextTheme.bodyText1,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('Deleted');
                      }),
                  Chip(
                    label: Text(
                      'Mint',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                  Chip(
                    label: Text(
                      'LemonGrass',
                      style: FooderlichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('Deleted');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
