import 'package:flutter/material.dart';

class IroPage extends StatefulWidget {
  const IroPage({Key? key}) : super(key: key);

  @override
  State<IroPage> createState() => _IroPageState();
}

class _IroPageState extends State<IroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/iro.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 50,
                        left: 30,
                      ),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 4,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'International RelationShip Official',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'We aim to achieve the highest levels of \nprofissional ability',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const Text(
                    "Asia’s first Centre for Baltic Culture and Studies - CBCS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: const Text(
                    "Asia’s first Centre for Baltic Culture and Studies (CBCS) was inaugurated in August 2016 by H. E. Mr. Aivars Groza, Ambassador of Republic of Latvia, H. E. Mr. Laimonas Talat-Kapsa, Ambassador of Republic of Lithuania along with, H. E. Mr. Riho Kruuv, Ambassador of Republic of Estonia, H. E. Mr. Krishna Kant Paul, Governor of Uttarakhand State, the Chancellor of DSVV, H. H. Dr. Pranav Pandya Ji and Prof. Ina Druviete, Vice Rector, University of Latvia. It envisions to foster & promote the cultural activities of both India and Baltic Countries in respective nations. The CBCS intends to discover and disseminate the knowledge about the shared history, heritage and culture of India and the Baltic Nations while foster and promoting cultural activities of both Indian and Baltic countries in their respective nations. It also intends to teach Latvian, Lithuanian and Estonian languages as open electives, promote cross language translations of important works of mutual interest and also preparing Hindi-Latvian, Hindi-Lithuanian dictionaries.",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/iro.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/iro.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/iro.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/iro.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
