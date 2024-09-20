import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mentions/flutter_mentions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (_, child) => Portal(child: child!),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FlutterMentionsState> key = GlobalKey<FlutterMentionsState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          ElevatedButton(
            child: const Text('Get Text'),
            onPressed: () {
              log(key.currentState!.controller!.markupText);
            },
          ),
          Container(
            child: 
            
            FlutterMentions(
              onMarkupChanged: (value) {
                
              },
              
              
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              trailing: const [Icon(Icons.send)],
              key: key,
              suggestionPosition: SuggestionPosition.Top,
              maxLines: 5,
              minLines: 1,
                decoration: InputDecoration(
                  hintText: "'کیفیت یہاں درج کریں'",
        contentPadding: const EdgeInsets.all(0),
        // prefixIcon: suffix,
        // hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 12,
          
        ),
        
        border: OutlineInputBorder(
         borderSide: const BorderSide(
            color:  Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
           color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
           color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      
      
      ),
    
              mentions: [
                Mention(
                    markupBuilder: (trigger, mention, value) {
                      return "$trigger[$value]($mention)";
                    },
                    trigger: '@',
                    style: const TextStyle(
                      color: Colors.amber,
                    ),
                    data: [
                      {
                        'id': '61as61fsa',
                        'display': 'fayeedP',
                        'full_name': 'Fayeed Pawaskar',
                        'photo':
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                      },
                      {
                        'id': '61asasgasgsag6a',
                        'display': 'khaled',
                        'full_name': 'DJ Khaled',
                        'style': const TextStyle(color: Colors.purple),
                        'photo':
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                      },
                      {
                        'id': 'asfgasga41',
                        'display': 'markT',
                        'full_name': 'Mark Twain',
                        'photo':
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                      },
                      {
                        'id': 'asfsaf451a',
                        'display': 'JhonL',
                        'full_name': 'Jhon Legend',
                        'photo':
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                      },
                    ],
                    matchAll: false,
                    suggestionBuilder: (data) {
                      return Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                data['photo'],
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              children: <Widget>[
                                Text(data['full_name']),
                                Text('@${data['display']}'),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
                Mention(
                  trigger: '#',
                  disableMarkup: true,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  data: [
                    {'id': 'reactjs', 'display': 'reactjs'},
                    {'id': 'javascript', 'display': 'javascript'},
                  ],
                  matchAll: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
