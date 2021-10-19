import 'package:flutter/material.dart';
import 'package:ui/utils/const.dart';
import 'package:ui/utils/widget_function.dart';

const CATEGORIES = [
  {'images': 'salad.png', 'name': 'Salad'},
  {'images': 'fastfood.png', 'name': 'Fast Food'},
  {'images': 'desert.png', 'name': 'Desert'},
  {'images': 'pizza.png', 'name': 'Pizza'},
  {'images': 'drinks.png', 'name': 'Drinks'}
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Expanded(
                flex: 4,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: colorGreen,
                    ),
                    Image.asset('assets/images/tree_v.png'),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      Image.asset('assets/images/avatar.png'),
                                ),
                              ),
                              addHorizontalSpace(20),
                              Expanded(
                                  child: Text(
                                'How hungry are you today?',
                                style: textTheme.headline5!
                                    .apply(color: Colors.white),
                              ))
                            ],
                          ),
                          TextField(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              hintText: 'Search Food Items',
                              hintStyle: const TextStyle(color: Colors.white24),
                              filled: true,
                              fillColor: Colors.white24,
                              prefixIcon: const Icon(
                                Icons.search_sharp,
                                color: Colors.white,
                              ),
                              suffixIcon: Container(
                                width: 70,
                                height: 70,
                                decoration: const BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                ),
                                child:
                                    const Icon(Icons.menu, color: Colors.white),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none),
                            ),
                          ),
                          addVerticalSpace(10),
                        ],
                      ),
                    )
                  ],
                )),
            Container(
              width: constraints.maxHeight,
              color: Colors.white60,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  bottom: 10.0,
                ),
                child: Stack(clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        addVerticalSpace(constraints.maxWidth * 0.35),
                        Row(
                          children: [
                            Text(
                              'Popular Foods',
                              style: textTheme.headline5,
                            ),
                            Expanded(child: Center()),
                            Text(
                              'View all >',
                              style: textTheme.subtitle2!
                                  .apply(color: colorOrange),
                            ),
                            addHorizontalSpace(10.0),
                          ],
                        )
                      ],
                    ),
                    Positioned(top: -constraints.maxWidth*0.15,
                        left: 0,
                        child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxWidth * 0.35,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: CATEGORIES
                            .map((category) => Container(
                                  margin: const EdgeInsets.only(right: 10.0),
                                  width: constraints.maxWidth * 0.25,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),child: Column(
                                    children: [Image.asset("assets/images/${category['images']}"),
                                      addVerticalSpace(10.0),
                                      Text('${category['name']}',style: textTheme.bodyText2!.apply(color: colorBlack),)
                                      
                                    ],

                                  ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
