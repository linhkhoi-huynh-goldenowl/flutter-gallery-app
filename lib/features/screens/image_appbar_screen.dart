import 'package:flutter/material.dart';

class ImageAppbarScreen extends StatefulWidget {
  const ImageAppbarScreen({Key? key}) : super(key: key);

  @override
  State<ImageAppbarScreen> createState() => _ImageAppbarScreenState();
}

class _ImageAppbarScreenState extends State<ImageAppbarScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.grey[800],
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.share,
                          size: 32,
                        )),
                    const Text("Share")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          size: 32,
                        )),
                    const Text("Subrise")
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 15.0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Read',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ))
            ]),
          ),
          backgroundColor: Colors.grey[900],
          //1
          body: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              //2
              SliverAppBar(
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.download))
                ],
                backgroundColor: Colors.grey[900],
                title: const Text('Pokemon'),
                floating: true,
                pinned: true,
                stretch: true,
                primary: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/pokemon.png'),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          const Text(
                            "Pokemon Special - Episode 145",
                            style: TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Theme(
                                    data: ThemeData(
                                        canvasColor: Colors.transparent),
                                    child: Chip(
                                      visualDensity: const VisualDensity(
                                          horizontal: 0.0, vertical: -4),
                                      elevation: 11,
                                      labelPadding: const EdgeInsets.all(1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      label: const Text(
                                        'Comedy',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.grey.shade300.withOpacity(0.5),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                        canvasColor: Colors.transparent),
                                    child: Chip(
                                      visualDensity: const VisualDensity(
                                          horizontal: 0.0, vertical: -4),
                                      elevation: 11,
                                      labelPadding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      label: const Text(
                                        'System',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.grey.shade300.withOpacity(0.5),
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                        canvasColor: Colors.transparent),
                                    child: Chip(
                                      visualDensity: const VisualDensity(
                                          horizontal: 0, vertical: -4),
                                      elevation: 11,
                                      labelPadding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      label: const Text(
                                        'Counterattack',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      backgroundColor:
                                          Colors.grey.shade300.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Theme(
                                    data: ThemeData(
                                        canvasColor: Colors.transparent),
                                    child: Chip(
                                      avatar: const Icon(
                                        Icons.fireplace,
                                        color: Colors.amber,
                                        size: 22,
                                      ),
                                      visualDensity: const VisualDensity(
                                          horizontal: 0, vertical: -4),
                                      elevation: 11,
                                      labelPadding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      label: const Text(
                                        '707.71K',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  Theme(
                                    data: ThemeData(
                                        canvasColor: Colors.transparent),
                                    child: Chip(
                                      avatar: const Icon(
                                        Icons.handshake,
                                        color: Colors.red,
                                        size: 22,
                                      ),
                                      visualDensity: const VisualDensity(
                                          horizontal: 0, vertical: -4),
                                      elevation: 11,
                                      labelPadding: const EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      label: const Text(
                                        '20.51K',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.white),
                                      ),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )),
                  stretchModes: const [StretchMode.zoomBackground],
                ),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                      child: PreferredSize(
                          preferredSize: const Size.fromHeight(40.0),
                          child: Container(
                            color: Colors.black,
                            child: TabBar(
                              labelColor: Colors.red,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Colors.red,
                              isScrollable: false,
                              controller: _tabController,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: const [
                                Tab(
                                  child: Text("Description",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Tab(
                                    child: Text("Episodes",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                              ],
                            ),
                          )))),
              SliverList(
                  delegate: SliverChildListDelegate([
                SizedBox(
                  height: 900,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Update Everyday",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 22,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 22,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 22,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 22,
                                          ),
                                          Icon(
                                            Icons.star_half,
                                            color: Colors.yellow,
                                            size: 22,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.edit_calendar,
                                            color: Colors.grey,
                                            size: 22,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    text: const TextSpan(
                                        style: TextStyle(fontSize: 16),
                                        text:
                                            "Bai Wu, a d-list writer who ran out of money, was thrown out of the house by his landlord. At the lowest point of his life, he walked in a lottery store with 20 bucks. Thinking he had nothing to lose, Bai Wu spent all his money on the lottery. Surprisingly, when he was wondering what the possibility of winning lottery will be, he found he could see the success rate! Then He walked out of the store with 300,000 bucks. What's better is that Bai Wu found his superpower can be used in many other ways"),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 220,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.amber.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Icon(
                                                Icons.medical_services,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                "Top Fantasy No.15",
                                                style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(Icons.keyboard_arrow_right,
                                                  color: Colors.amber)
                                            ]),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 100,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Text(
                                                "Modern",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ]),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: const [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                            "assets/images/pikachu.jpg"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Haotoon",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons
                                                .indeterminate_check_box_rounded,
                                            color: Colors.amber,
                                            size: 22,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "8845 gift (s)",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.amber,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          elevation: 15.0,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                            'Gift',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.five_mp,
                                            color: Colors.red,
                                            size: 22,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "509 Votes",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.amber,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          elevation: 15.0,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text(
                                            'Vote',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const Divider(
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.favorite,
                                            color: Colors.amber,
                                            size: 22,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Top Fans",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "79652 support in total",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                "assets/images/pikachu.jpg"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                "assets/images/pikachu.jpg"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                "assets/images/pikachu.jpg"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              width: double.maxFinite,
                              height: 20,
                              color: Colors.grey.shade800,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Hot Comments",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 21),
                                      ),
                                      Spacer(),
                                      Text(
                                        "1215 Comments >",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                            "assets/images/pikachu.jpg"),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "⭐Bintang⭐",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                          const Chip(
                                            label: Text('Lv. 7',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            backgroundColor: Colors.tealAccent,
                                          ),
                                          const Text(
                                            "😈I will destroy😈",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75,
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.grey.shade800,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                RichText(
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                      text: "Diva: ",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors
                                                            .grey.shade500,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          "Can u plzz try reading my story\"secretary is a bodyguard ",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  "total 1 replies",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                "23/11/2021 02:06",
                                                style: TextStyle(
                                                    color: Colors.grey.shade500,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11),
                                              ),
                                              const SizedBox(
                                                width: 90,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    ":",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade500,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  ),
                                                  const SizedBox(
                                                    width: 25,
                                                  ),
                                                  Text(
                                                    "👍1630",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade500,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  ),
                                                  const SizedBox(
                                                    width: 25,
                                                  ),
                                                  Text(
                                                    "💬1",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade500,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 11),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text("hi"),
                    ],
                  ),
                ),
              ])),
            ],
          ),
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize child;

  _SliverAppBarDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
