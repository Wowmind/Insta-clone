import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(top: 12,left: 6),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 27,
            ),
          ),
        ),
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(top: 13),
          child: Text(
            'Instagram',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 12,right: 6),
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                  Icons.web_asset,
                  size: 27,
                  color: Colors.black,
                ),
                  onPressed: () {},
                ),

                Image.asset(
                    'assets/messagr.png',
                  scale: 5,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,

        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined,size: 30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined ,size: 30,), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined ,size: 30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined ,size: 30,),title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined ,size: 30,), title: Text('')),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: ListView(
      padding: EdgeInsets.all(10),
      children: [
        Container(
          height: 125,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MyItems('assets/egypt.jpeg', 'Travel Beta'),
              MyItems('assets/food.jpg', 'Azxxzat'),
              MyItems('assets/black.jpg', 'Sophie'),
              MyItems('assets/black2.jpg', 'Vivian Conner'),
              MyItems('assets/food2.jpeg', 'Chef Ladi'),
              MyItems('assets/jane.jpg', 'Jane'),
              MyItems('assets/laura.jpg', 'Laura'),

            ],
          ),
        ),
        List('assets/davido.jpeg', 'Davido', 'assets/davido.jpeg', '120,090 likes', 'Who dey breath', 'View all 800 comments', 'Wilfred09  yes', 'Add a comment..', '30 minutes ago'),
        SizedBox(height: 20,),
        List('assets/wiz.jpg', 'Wizkid', 'assets/wiz.jpg', '182,345 likes', 'Egypt here i come', 'View all 910 comments', 'John omo, lol', 'Add a comment', '50 minutes ago'),
        SizedBox(height: 20,),
        List('assets/burna.jpg', 'Burna', 'assets/burna.jpg', '190,000 likes', 'Kilometer out now..', 'View all 760 comments', 'wixkid nice', 'Add a comment', '50 minutes ago'),

      ],
    ),
    );
  }

  Widget List(String avatar, String name,String img,String text, String text2, String text3, String name2, String text4, String text5){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(avatar),
                ),
              ),
            ),
            SizedBox(width: 6,),

                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
            SizedBox(width: 260,),

            Text(
              '....',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
        SizedBox(height: 7,),
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        SizedBox(height: 6,),
        Row(
          children: [
            Icon(
              Icons.favorite_border_outlined,
              size: 32,
              color: Colors.black,
            ),
            SizedBox(width: 14,),
            Icon(
              Icons.messenger_outline_outlined,
              size: 28,
              color: Colors.black,
            ),
            SizedBox(width: 14,),
            Image.asset(
              'assets/messagr.png',
              scale: 5,
            ),
                SizedBox(width: 230,),

                Icon(
                  Icons.add_to_queue_outlined,
                  size: 28,
                  color: Colors.black,
                ),
          ],

        ),
        SizedBox(height: 5,),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6,),

        Row(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5,),
            Text(
              text2,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),

          ],
        ),
        SizedBox(height: 6,),
        Text(
          text3,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 10),

        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(avatar)
                ),
              ),
            ),
            SizedBox(width: 10,),
            Text(
              text4,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 8,),
        Text(
          text5,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
        ),

      ],
    );
  }



  Widget MyItems(String img, String name){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(img),
           ),
           border: Border.all(
             color: Colors.red,
             style: BorderStyle.solid,
             width: 2.0
           ),
          ),
        ),
        Text(name,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
        )
      ],
    );
  }
}

