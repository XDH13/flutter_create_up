import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work_work/pref/PersonalBean.dart';
import 'package:work_work/pref/shared_pref.dart';

class Personal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PersonalState();

}

class PersonalState extends State<Personal> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _userNameController = new TextEditingController();
  String username;
  final List<personalbean> personallist = <personalbean>[];
  personalbean person;
  var width, height;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('管理员端'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _userNameController,
            cursorColor: Colors.lightBlue,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () async {
                    username = _userNameController.toString();
                    person = await SharedPreferencesUtils.getSelectBean(context, username);
                    setState(() {
                      personallist.add(person);
                    });
                    },
                )
            ),
            style: TextStyle(
              decorationColor: Colors.lightBlueAccent,
              fontSize: 30,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            //加上这个就不会因为高度报错了
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Divider(
                  color: Colors.grey,
                  height: 10,
                ),
              );
            },
            itemCount: personallist.length,
            itemBuilder: getItemBuilder,
          )
        ],
      ),
    );
  }

  Widget getItemBuilder(context, index) {
    var e = personallist[index];
    return getDismissible(context, e);
  }

  Widget getDismissible(context, personalbean e) {
    return Dismissible(key: Key(e.beanid.toString()), 
        child:Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ElevatedButton(
            // minVerticalPadding: 0,
            onPressed: () {
              Navigator.pushNamed(context, "/userpage", arguments: e);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 0,
            ),
            child: Container(
              height: height*0.1,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: width * 0.7,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5,),
                          Text("${e.name}",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Flex(
                        direction: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${e.name}",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '  |  ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Expanded(
                              child: Text("${e.access}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.normal,
                                  )))
                        ],
                      ),
                    ),
                          SizedBox(height: 5,)
                        ]),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
