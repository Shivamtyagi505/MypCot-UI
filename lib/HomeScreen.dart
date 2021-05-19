import 'package:flutter/material.dart';
import 'package:mypcot/utils/appdrawer.dart';
import 'package:mypcot/utils/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isRefreshing;
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.orange[200],
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          title: RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .title
                  .copyWith(fontWeight: FontWeight.w600),
              children: [
                TextSpan(
                  text: "Dashboard",
                  style: TextStyle(color: Colors.orange[200]),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.call),
              color: Colors.orange[200],
              onPressed: () {},
            ),
            IconButton(
                icon: Icon(Icons.account_circle_outlined),
                color: Colors.orange[200],
                onPressed: () {})
          ],
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/home.png'),
                ),
                activeIcon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/home.png'),
                ),
                title: new Text("Home",
                    style: new TextStyle(
                        color: const Color(0xFF06244e), fontSize: 12.0))),
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/moneys.png'),
                ),
                activeIcon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/moneys.png'),
                ),
                title: new Text("Earnings",
                    style: new TextStyle(
                        color: const Color(0xFF06244e), fontSize: 12.0))),
            new BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/paths.png'),
                ),
                activeIcon: Container(
                  height: 30,
                  width: 30,
                  child: new Image.asset('assests/images/paths.png'),
                ),
                title: new Text("My Requests",
                    style: new TextStyle(
                        color: const Color(0xFF06244e), fontSize: 12.0))),
          ],
          onTap: _onTappedBar,
          selectedItemColor: Colors.orange,
          currentIndex: _selectedIndex,
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.only(right: 2, top: 2),
                  child: Padding(
                    padding: const EdgeInsets.all(37),
                    child: Container(
                      child: Image.asset(
                        "assests/images/logo.png",
                        fit: BoxFit.fitWidth,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.orange[500],
                ),
                title: Text('Home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.list_alt_outlined,
                  color: Colors.orange[500],
                ),
                title: Text('My Requests'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.quick_contacts_mail_rounded,color:Colors.orange[500],),
                title: Text('My Profile'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.lock_rounded,color: Colors.orange[500],),
                title: Text('Change Password'),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet_rounded,color: Colors.orange[500],),
                title: Text('Earnings'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.info_rounded ,color: Colors.orange[500],),
                title: Text('Terms and Conditions'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.contact_support_rounded ,color: Colors.orange[500],),
                title: Text('FAQ'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(Icons.logout ,color: Colors.orange[500],),
                title: Text('Logout'),
              ),
            ),
          ]),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                padding: EdgeInsets.only(top: 20, right: 10, left: 30),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 7), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text("4",
                                  style: TextStyle(
                                      color: Colors.orange[200], fontSize: 50)),
                            ),
                            Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.black12.withOpacity(0.3),
                              indent: 16,
                              endIndent: 16,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 13, top: 12),
                              child: Text(
                                'Today`s Assigned Request',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 7), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20),
                              child: Text("0",
                                  style: TextStyle(
                                      color: Colors.orange[200], fontSize: 50)),
                            ),
                            Divider(
                              height: 1,
                              thickness: 0.5,
                              color: Colors.black12.withOpacity(0.3),
                              indent: 16,
                              endIndent: 16,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16, top: 12),
                              child: Text(
                                'Today`s Completed Request',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Pending Requests',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        SizedBox(
                          width: 147,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.filter_alt_rounded,
                              color: Colors.orange[200],
                              size: 26,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  Column(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ServiceDetails()));
                      },
                      child: SizedBox(
                        height: 170,
                        width: 400,
                        child: Container(
                          margin: EdgeInsets.only(right: 20, top: 10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.orange
                                        .shade900, // changes position of shadow
                                    offset: Offset.zero,
                                    blurRadius: 2),
                              ],
                              color: Colors.grey[50],
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 12),
                                child: Row(
                                  children: [
                                    Text(
                                      "Req ID : #SREQ2546",
                                      style: Theme.of(context).textTheme.button,
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 100,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent[700],
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Text("ONGOING",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Customer Name :  ',
                                      style: Theme.of(context).textTheme.button,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: 'Siddhesh Dumbre',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Service Date :  ',
                                      style: Theme.of(context).textTheme.button,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '11th Dec,2020 (03:06 PM)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13)),
                                      ],
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Request Date :  ',
                                      style: Theme.of(context).textTheme.button,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '11th Dec,2020 (03:06 PM)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13)),
                                      ],
                                    ),
                                  )),
                              SizedBox(height: 10),
                              Divider(
                                height: 1,
                                thickness: 0.5,
                                color: Colors.black12.withOpacity(0.3),
                                indent: 1,
                                endIndent: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'View',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 65,
                                      ),
                                      child: Container(
                                        color: Colors.black38,
                                        height: 30,
                                        width: 2,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 50,
                                      ),
                                      child: Container(
                                        child: Text(
                                          'End Service',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ServiceDetails()));
                        },
                        child: SizedBox(
                          height: 170,
                          width: 400,
                          child: Container(
                            margin: EdgeInsets.only(right: 20, top: 10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.orange
                                          .shade900, // changes position of shadow
                                      offset: Offset.zero,
                                      blurRadius: 2),
                                ],
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 12),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Req ID : #SREQ2546",
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: 100,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 2),
                                        decoration: BoxDecoration(
                                            color: Colors.redAccent[100],
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Text("PENDING",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Customer Name :  ',
                                        style:
                                            Theme.of(context).textTheme.button,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'Siddhesh Dumbre',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Service Date :  ',
                                        style:
                                            Theme.of(context).textTheme.button,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '11th Dec,2020 (03:06 PM)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Request Date :  ',
                                        style:
                                            Theme.of(context).textTheme.button,
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: '11th Dec,2020 (03:06 PM)',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13)),
                                        ],
                                      ),
                                    )),
                                SizedBox(height: 10),
                                Divider(
                                  height: 1,
                                  thickness: 0.5,
                                  color: Colors.black12.withOpacity(0.3),
                                  indent: 1,
                                  endIndent: 1,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 60, top: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'View',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 65,
                                        ),
                                        child: Container(
                                          color: Colors.black38,
                                          height: 30,
                                          width: 2,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 50,
                                        ),
                                        child: Container(
                                          child: Text(
                                            'End Service',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ServiceDetails()));
                          },
                          child: SizedBox(
                            height: 170,
                            width: 400,
                            child: Container(
                              margin: EdgeInsets.only(right: 20, top: 10),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.orange
                                            .shade900, // changes position of shadow
                                        offset: Offset.zero,
                                        blurRadius: 2),
                                  ],
                                  color: Colors.grey[50],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Req ID : #SREQ2546",
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 100,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 2),
                                          decoration: BoxDecoration(
                                              color: Colors.redAccent[100],
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Text("PENDING",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Customer Name :  ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: 'Siddhesh Dumbre',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13)),
                                          ],
                                        ),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Service Date :  ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '11th Dec,2020 (03:06 PM)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13)),
                                          ],
                                        ),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Request Date :  ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button,
                                          children: <TextSpan>[
                                            TextSpan(
                                                text:
                                                    '11th Dec,2020 (03:06 PM)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 13)),
                                          ],
                                        ),
                                      )),
                                  SizedBox(height: 10),
                                  Divider(
                                    height: 1,
                                    thickness: 0.5,
                                    color: Colors.black12.withOpacity(0.3),
                                    indent: 1,
                                    endIndent: 1,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 60, top: 5),
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Text(
                                            'View',
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 65,
                                          ),
                                          child: Container(
                                            color: Colors.black38,
                                            height: 30,
                                            width: 2,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 50,
                                          ),
                                          child: Container(
                                            child: Text(
                                              'End Service',
                                              style: TextStyle(
                                                  color: Colors.orange,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ServiceDetails()));
                              },
                              child: SizedBox(
                                height: 170,
                                width: 400,
                                child: Container(
                                  margin: EdgeInsets.only(right: 20, top: 10),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.orange
                                                .shade900, // changes position of shadow
                                            offset: Offset.zero,
                                            blurRadius: 2),
                                      ],
                                      color: Colors.grey[50],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 12),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Req ID : #SREQ2546",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 100,
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10, vertical: 2),
                                              decoration: BoxDecoration(
                                                  color: Colors.redAccent[100],
                                                  borderRadius:
                                                      BorderRadius.circular(6)),
                                              child: Text("PENDING",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Customer Name :  ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'Siddhesh Dumbre',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 13)),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Service Date :  ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        '11th Dec,2020 (03:06 PM)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 13)),
                                              ],
                                            ),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                              text: 'Request Date :  ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        '11th Dec,2020 (03:06 PM)',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 13)),
                                              ],
                                            ),
                                          )),
                                      SizedBox(height: 10),
                                      Divider(
                                        height: 1,
                                        thickness: 0.5,
                                        color: Colors.black12.withOpacity(0.3),
                                        indent: 1,
                                        endIndent: 1,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 60, top: 5),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'View',
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 65,
                                              ),
                                              child: Container(
                                                color: Colors.black38,
                                                height: 30,
                                                width: 2,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 50,
                                              ),
                                              child: Container(
                                                child: Text(
                                                  'End Service',
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ]),
                  ])
                ]))));
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    // _pageController.jumpToPage(value);
  }
}
