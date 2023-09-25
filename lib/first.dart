import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}
List<String> language = [
  'English',
  'Malayalam',
  'Hindi',
  'Kannada',
  'Tamil',
  'Telengu'
];
class _firstState extends State<first> {
  Future _displaaybpttomSheet(BuildContext context) {
     String _currentLanguage = language[0];
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        height: 300,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                RadioListTile(
                  title: Text('English'),
                  value: language[0],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Malayalam'),
                  value: language[1],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Hindi'),
                  value: language[2],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Kannada'),
                  value: language[3],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Tamil'),
                  value: language[4],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Thelungu'),
                  value: language[5],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pop-up screen'),
      ),
      body: Center(
        child: ListTile(onTap: () {
                  _displaaybpttomSheet(context);
                },
                          title: Text('App language'),
                          subtitle: Text('English(divice\'s language)'),
                          leading: Icon(Icons.g_translate_sharp ),
                        ),
      ),
    );
  }
}