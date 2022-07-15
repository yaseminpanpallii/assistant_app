import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(
        height: height / 3.2,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                FontAwesomeIcons.users,
                                color: const Color(0xff999999),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Danışanlar",
                                style: TextStyle(
                                  color: const Color(0xff999999),
                                  fontSize: width / 25,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff727a80),
                        Colors.white,
                      ],
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 1, left: 1),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.calendarAlt,
                              color: Color(0xff999999),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Randevularım",
                              style: TextStyle(
                                color: const Color(0xff999999),
                                fontSize: width / 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.settings,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ayarlar",
                            style: TextStyle(
                              color: const Color(0xff999999),
                              fontSize: width / 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xff727a80),
                        Colors.white,
                      ],
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.bloggerB,
                              color: const Color(0xff999999),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Blog",
                              style: TextStyle(
                                color: const Color(0xff999999),
                                fontSize: width / 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff727a80),
                        Colors.white,
                      ],
                    )),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1, left: 1, right: 1),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.utensils,
                              color: Color(0xff999999),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Tarifler",
                              style: TextStyle(
                                color: const Color(0xff999999),
                                fontSize: width / 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: const BoxDecoration(
                        gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff727a80),
                        Colors.white,
                      ],
                    )),
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.questionCircle,
                              color: const Color(0xff999999),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Yardım",
                              style: TextStyle(
                                color: const Color(0xff999999),
                                fontSize: width / 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 3,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo_name.jpeg",
              width: width / 3,
              height: height / 10,
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.bell,
                  color: Color(0xff949494),
                  size: 25,
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: width / 10,
                  height: width / 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profil_photo.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: height / 5,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 184, 184, 184).withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.users,
                              color: Colors.green,
                              size: width / 14,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Aktif Danışan",
                              style: TextStyle(
                                fontSize: width / 27,
                                color: const Color(0xff9fa3a5),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "36",
                              style: TextStyle(
                                fontSize: width / 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(215, 30, 30, 30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 184, 184, 184).withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.solidCalendarAlt,
                              color: Colors.green,
                              size: width / 14,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Randevu",
                              style: TextStyle(
                                fontSize: width / 27,
                                color: const Color(0xff9fa3a5),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "6",
                              style: TextStyle(
                                fontSize: width / 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff1e1e1e),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 184, 184, 184).withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: const Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.utensils,
                              color: Colors.green,
                              size: width / 14,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Gelen Tarif",
                              style: TextStyle(
                                fontSize: width / 27,
                                color: const Color(0xff9fa3a5),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "4",
                              style: TextStyle(
                                fontSize: width / 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff1e1e1e),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bugünün Randevuları",
                    style: TextStyle(
                      fontSize: width / 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(195, 59, 59, 59),
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.arrowRight,
                    color: const Color(0xff2d2d2d),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height / 5,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                width: .5,
                                color: Colors.grey,
                              ),
                            ),
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  "https://picsum.photos/200/300",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "10.30",
                            style: TextStyle(
                              fontSize: width / 21,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
