import 'package:flutter/material.dart';

class Employee_buses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Main Account',
                    style: TextStyle(

                        color: Color(0xff4e357e), fontWeight:
                    FontWeight.bold),
                  ),

                  const Text(
                    '13.458 \$',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  const Text(
                    '👇🏽Current Balance',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          height: 45,
                          width: 47,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xffd4b0fd)),
                          child: const Icon(Icons.add),
                        ),
                      ),
                      Padding(

                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          height: 45,
                          width: 47,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xffd4b0fd)),
                          child: const Icon(Icons.arrow_right_alt),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color(0xfff1e6fd)),
                            child: const Center(
                                child: Text(
                                  'Split a purchase',
                                  style: TextStyle(

                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff4e357e)),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(

                    'Recent Events',
                    style: TextStyle(

                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/nike.jpg',
                        width: 50,
                        height: 50,

                      ),

                      title: const Text('Nike Shop'),

                      subtitle: const Text(
                        '10th March',
                        style: TextStyle(color: Colors.grey),
                      ),

                      trailing: const Text(
                        '-62.94 \$',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff767676),

                        ),
                      ),
                    ),
                  ),
                  Card(

                    elevation: 0,
                    color: Colors.white,

                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/starbucks.jpg',
                        width: 50,
                        height: 50,

                      ),

                      title: const Text('StarBucks'),

                      subtitle: const Text(
                        '24th March',
                        style: TextStyle(color: Colors.grey),

                      ),

                      trailing: const Text(
                        '-6.34 \$',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff767676),

                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white,

                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/jazzcash.jpg',
                        width: 50,
                        height: 50,

                      ),

                      title: const Text(
                        'JazzCash',
                        style: TextStyle(

                            color: Color(0xff4e357e),
                            fontWeight: FontWeight.bold),
                      ),

                      subtitle: const Text(
                        '12th March',

                        style: TextStyle(color: Colors.grey),

                      ),

                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff1e6fd),
                        ),

                        child: Padding(

                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 10),
                          child: const Text(
                            '60.94 \$',
                            style: TextStyle(
                                fontSize: 15,

                                fontWeight: FontWeight.bold,
                                color: Color(0xff4e357e)),

                          ),
                        ),
                      ),
                    ),
                  ),

                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xfaeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/saving.jpg',

                        width: 50,
                        height: 50,

                      ),
                      title: const Text('FROM SAVINGS'),
                      subtitle: const Text(
                        '10th March',

                        style: TextStyle(color: Colors.grey),

                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff1e6fd),
                        ),

                        child: Padding(

                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 10),
                          child: const Text(
                            '50.0 \$',
                            style: TextStyle(
                                fontSize: 15,

                                fontWeight: FontWeight.bold,
                                color: Color(0xff4e357e)),

                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    'Recent Events',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),

                  ),
                  Card(

                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,

                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/khaadi.jpg',

                        width: 50,
                        height: 50,

                      ),
                      title: const Text(
                        'Khaadi',
                        style: TextStyle(

                            color: Color(0xff4e357e),
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                        '12th March',

                        style: TextStyle(color: Colors.grey),

                      ),

                      trailing: const Text(
                        '-300.94 \$',
                        style: TextStyle(
                            fontSize: 15,

                            fontWeight: FontWeight.bold,
                            color: Color(0xff767676)),

                      ),
                    ),
                  ),
                  Card(
                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/diners.jpg',

                        width: 50,
                        height: 50,

                      ),

                      title: const Text('Diners'),
                      subtitle: const Text(
                        '12th March',
                        style: TextStyle(color: Colors.grey),
                      ),

                      trailing: const Text(
                        '-40.99 \$',
                        style: TextStyle(
                            color: Color(0xff767676),
                            fontSize: 15,

                            fontWeight: FontWeight.bold),

                      ),

                    ),
                  ),
                  Card(

                    elevation: 0,
                    color: Colors.white,

                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xffeeeeee),
                        width: 1.0,
                      ),
                    ),

                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),

                    child: ListTile(
                      leading: Image.asset(
                        'assets/j.jpg',
                        width: 50,
                        height: 50,

                      ),

                      title: const Text(

                        'J.',

                        style: TextStyle(

                            color: Color(0xff4e357e),
                            fontWeight: FontWeight.bold),
                      ),

                      subtitle: const Text(
                        '17th March',

                        style: TextStyle(color: Colors.grey),

                      ),
                      trailing: const Text(
                        '-234.12 \$',
                        style: TextStyle(
                            fontSize: 15,

                            fontWeight: FontWeight.bold,
                            color: Color(0xff4e357e)),
                      ),
                    ),
                  ),
                  Card(

                    elevation: 0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(
                        color: Color(0xfaeeeeee),
                        width: 1.0,
                      ),
                    ),
                    margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/optp.jpg',
                        width: 50,
                        height: 50,

                      ),
                      title: const Text('OPTP'),
                      subtitle: const Text(

                        '14th March',

                        style: TextStyle(color: Colors.grey),

                      ),
                      trailing: const Text(
                        '-146.32 \$',
                        style: TextStyle(
                          fontSize: 15,

                          fontWeight: FontWeight.bold,
                          color: Color(0xff767676),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}