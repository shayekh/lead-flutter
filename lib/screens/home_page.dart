import 'package:flutter/material.dart';

const url =
    'https://th.bing.com/th/id/OIP.lELm1ifdvkgG9H0ZTL1tRQHaFj?w=203&h=180&c=7&r=0&o=5&pid=1.7';

const desc =
    '''Sajek Valley is one of the most popular tourist spots in Bangladesh situated among the hills of the Kasalong range of mountains in Sajek union, Baghaichhari Upazila in Rangamati District.''';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Flutter Layout Demo'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            imageSection(),
            altHeader(),
            navSection(context),
            bodySection()
          ],
        ),
      ),
    );
  }

  Padding bodySection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        desc,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget navSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(24.0),
          color: Theme.of(context).primaryColor,
          border: Border.all(color: Colors.grey, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 7),
              blurRadius: 10,
              spreadRadius: 2.0,
            )
          ],
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blue.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.8, 0.2],
          )
          // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24.0))
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(
                Icons.call,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "CALL",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.near_me,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "ROUTE",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "SHARE",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget altHeader() {
    return ListTile(
      title: Text("Sajek Valley"),
      subtitle: Text("Khagrachari, chittagong, Bangladesh"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text(
            '95',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Padding headerSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sajek Valley',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Khagrachari, chittagong, Bangladesh',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text(
            '95',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Image imageSection() => Image.network(
        url,
        width: double.infinity,
        height: 250,
        fit: BoxFit.cover,
      );
}
