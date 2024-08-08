import 'package:flutter/material.dart';

class AbstractPage extends StatefulWidget {
  const AbstractPage({super.key});

  @override
  State<AbstractPage> createState() => _AbstractPageState();
}

class _AbstractPageState extends State<AbstractPage> {
  var buttonColor = Colors.white;
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  final buttonStates = List<bool>.filled(7, false);

  void toggleButtonState(int index) {
    setState(() {
      buttonStates[index] = !buttonStates[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abstract Management',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 173, 173, 173),
                      width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, bottom: 10, right: 10),
                      child: Text(
                        'Panelist Submitted Results',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                              buttonStates[0]
                                  ? Colors.purple[900]
                                  : Colors.white,
                            )),
                            onPressed: () {
                              return toggleButtonState(0);
                            },
                            child: Text(
                              'All',
                              style: TextStyle(
                                color: buttonStates[0]
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                              buttonStates[1]
                                  ? Colors.purple[900]
                                  : Colors.white,
                            )),
                            onPressed: () {
                              return toggleButtonState(1);
                            },
                            child: Text(
                              'Rejected',
                              style: TextStyle(
                                color: buttonStates[1]
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                              buttonStates[2]
                                  ? Colors.purple[900]
                                  : Colors.white,
                            )),
                            onPressed: () {
                              return toggleButtonState(2);
                            },
                            child: Text(
                              'Review completed',
                              style: TextStyle(
                                color: buttonStates[2]
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                              buttonStates[3]
                                  ? Colors.purple[900]
                                  : Colors.white,
                            )),
                            onPressed: () {
                              return toggleButtonState(3);
                            },
                            child: Text(
                              'Review in progress',
                              style: TextStyle(
                                color: buttonStates[3]
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                              buttonStates[4]
                                  ? Colors.purple[900]
                                  : Colors.white,
                            )),
                            onPressed: () {
                              return toggleButtonState(4);
                            },
                            child: Text(
                              'Review in pending',
                              style: TextStyle(
                                color: buttonStates[4]
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 0, right: 0),
                      child: ListTile(
                        leading: Container(
                          child: Image.asset(
                            'assets/1.jpg',
                            width: 127,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          'Dr K U Shah Senior Consultant Award Paper',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // Text('Panelist 1- Completed'),
                                RichText(
                                    text: TextSpan(
                                        text: 'Panelist 1- ',
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: 'Completed',
                                          style: TextStyle(color: Colors.green))
                                    ])),
                                SizedBox(
                                  width: 35,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'View marks',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    )),
                              ],
                            ),
                            // Text('Panelist 2- Reviewing'),
                            RichText(
                              text: TextSpan(
                                  text: 'Panelist 2- ',
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Reviewing',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 187, 173, 44),
                                        ))
                                  ]),
                            ),
                            Row(
                              children: [
                                // Text('Panelist 3- Pending'),
                                RichText(
                                    text: TextSpan(
                                        text: 'Panelist 3- ',
                                        children: <TextSpan>[
                                      TextSpan(
                                          text: 'Pending',
                                          style: TextStyle(color: Colors.red))
                                    ])),
                                SizedBox(
                                  width: 45,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Forward to',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline),
                                    )),
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                  buttonStates[5]
                                      ? Colors.purple[900]
                                      : Colors.white,
                                )),
                                onPressed: () {
                                  return toggleButtonState(5);
                                },
                                child: Text(
                                  'Approve',
                                  style: TextStyle(
                                    color: buttonStates[5]
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                  buttonStates[6]
                                      ? Colors.purple[900]
                                      : Colors.white,
                                )),
                                onPressed: () {
                                  return toggleButtonState(6);
                                },
                                child: Text(
                                  'Reject',
                                  style: TextStyle(
                                    color: buttonStates[6]
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 10, right: 20, bottom: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 173, 173, 173),
                            width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'Digital Wall',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: _showDatePicker,
                                child: Text(
                                  '25 May',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    '${index + 8} AM',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: const Color.fromARGB(
                                            255, 146, 146, 146)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 173, 173, 173),
                            width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(
                                  'On Stage',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: _showDatePicker,
                                child: Text(
                                  '25 May',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    '${index + 8} AM',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: const Color.fromARGB(
                                            255, 146, 146, 146)),
                                  ),
                                );
                              },
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
        ],
      ),
    );
  }
}
