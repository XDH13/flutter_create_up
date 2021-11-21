
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_create_up/Units.dart';

Widget LeadingView(BuildContext context){
  return Image.asset("assets/sc2.png",height: 200,);
}

Widget TextBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2), // 设置边框
          borderRadius: BorderRadius.all(Radius.circular(10)), // 设置正圆角
        ),
        height: 800,
        width: MediaQuery.of(context).size.width / 3.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text_Big('行业分类', Colors.blue),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width / 3.2,
              color: Colors.black26,
            ),
            SizedBox(
              height: 30,
            ),
            Text_Middle('农林、卫生', Colors.black),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text_Small('农业', Colors.grey),
                Text_Small('食品', Colors.grey),
                Text_Small('医疗', Colors.grey),
                Text_Small('药业', Colors.grey),
                Text_Small('公共卫生', Colors.grey),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text_Middle('建筑、能源、冶炼、交通运输', Colors.black),
            Row(
              children: [
                Text_Small('建筑', Colors.grey),
                Text_Small('城乡规划', Colors.grey),
                Text_Small(' 建筑材料', Colors.grey),
                Text_Small('电力', Colors.grey),
                Text_Small('冶金', Colors.grey),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text_Middle('制造、信息技术、贸易', Colors.black),
            Row(
              children: [
                Text_Small('汽车', Colors.grey),
                Text_Small('机械', Colors.grey),
                Text_Small('航空', Colors.grey),
                Text_Small('航天', Colors.grey),
                Text_Small('民用航空', Colors.grey),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text_Middle('党政、社团、国防、法律', Colors.black),
            Row(
              children: [
                Text_Small('党委', Colors.grey),
                Text_Small('人大', Colors.grey),
                Text_Small('政府', Colors.grey),
                Text_Small('政协', Colors.grey),
                Text_Small('智库', Colors.grey),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // 设置边框
              borderRadius: BorderRadius.all(Radius.circular(10)), // 设置正圆角
            ),
            height: 390,
            width: MediaQuery.of(context).size.width / 3.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text_Middle('经济专业毕业论文', Colors.blue),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3.2,
                  color: Colors.black26,
                ),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('浅谈石油测井仪器的技术创新'),
                ListsOfPart('土木施工主要技术创新与展望'),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // 设置边框
              borderRadius: BorderRadius.all(Radius.circular(10)), // 设置正圆角
            ),
            height: 390,
            width: MediaQuery.of(context).size.width / 3.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text_Middle('理工专业毕业论文', Colors.blue),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3.2,
                  color: Colors.black26,
                ),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // 设置边框
              borderRadius: BorderRadius.all(Radius.circular(10)), // 设置正圆角
            ),
            height: 390,
            width: MediaQuery.of(context).size.width / 3.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text_Middle('法律专业毕业论文', Colors.blue),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3.2,
                  color: Colors.black26,
                ),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2), // 设置边框
              borderRadius: BorderRadius.all(Radius.circular(10)), // 设置正圆角
            ),
            height: 390,
            width: MediaQuery.of(context).size.width / 3.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text_Middle('管理专业毕业论文', Colors.blue),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width / 3.2,
                  color: Colors.black26,
                ),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
                ListsOfPart('土木施工主要技术创新与展望'),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}

Widget SupportUnits() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/sc3.png"),
      SizedBox(width: 40),
      Image.asset("assets/sc3.png"),
    ],
  );
}
