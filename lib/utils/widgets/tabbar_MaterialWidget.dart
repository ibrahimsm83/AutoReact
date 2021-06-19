
import 'package:autoreact/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TabBarMaterialWidget extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;

  const TabBarMaterialWidget({
    @required this.index,
    @required this.onChangedTab,
    Key key,
  }) : super(key: key);

  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}
final List<String> SvgIconsList = [
  "$imgpath/Lcotion.svg",
  "$imgpath/Notification.svg",
  "$imgpath/Home.svg",
  "$imgpath/account.svg",
  "$imgpath/care.svg",
  "$imgpath/message.svg",
  "$imgpath/save.svg",
  // "$imgpath/car3.jfif",
  // "$imgpath/car4.jpg",
];

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  @override
  Widget build(BuildContext context) {
    final placeholder = Opacity(
      opacity: 0,
      child: IconButton(icon: Icon(Icons.no_cell), onPressed: null),
    );

    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,0),
            child: Container(
              height: 70,
              child: Column(
                children: [
                buildTabItem(
                  index: 0,
                 icon: SvgPicture.asset(SvgIconsList[2],color: primaryColor,height: 25,width: 25,),
                 // icon: Icon(Icons.search),
                ),
               Text("home"),
                ],
              ),
            ),
          ),
          // buildTabItem(
          //   index: 0,
          //  icon: SvgPicture.asset(SvgIconsList[2],color: primaryColor,height: 25,width: 25,),
          //  // icon: Icon(Icons.search),
          // ),
          Container(
            height: 70,
            child: Column(
              children: [
                buildTabItem(
                  index: 1,
                  icon: SvgPicture.asset(SvgIconsList[5],color: primaryColor,height: 25,width: 25,),
                  // icon: Icon(Icons.search),
                ),
                Text("Message"),
              ],
            ),
          ),
          // buildTabItem(
          //   index: 1,
          //   icon: SvgPicture.asset(SvgIconsList[5],color: primaryColor,height: 25,width: 25,),
          // ),
          placeholder,
          Container(
            height: 70,
            child: Column(
              children: [
                buildTabItem(
                  index: 2,
                  icon: SvgPicture.asset(SvgIconsList[4],color: primaryColor,height: 25,width: 25,),
                  // icon: Icon(Icons.search),
                ),
                Text("Rent Car"),
              ],
            ),
          ),
          //
          Container(
            height: 70,
            child: Column(
              children: [
                buildTabItem(
                  index: 3,
                  icon: SvgPicture.asset(SvgIconsList[3],color: primaryColor,height: 25,width: 25,),
                  // icon: Icon(Icons.search),
                ),
                Text("Account"),
              ],
            ),
          ),
         // placeholder,
          // buildTabItem(
          //   index: 2,
          //   icon: SvgPicture.asset(SvgIconsList[4],color: primaryColor,height: 25,width: 25,),
          // ),
          // buildTabItem(
          //   index: 3,
          //   icon: SvgPicture.asset(SvgIconsList[3],color: primaryColor,height: 25,width: 25,),
          //   title:Text("home"),
          // ),
        ],
      ),
    );
  }

  Widget buildTabItem({
    @required int index,
    @required SvgPicture icon,
    Widget title,
    //@required Widget child,
  }) {
    final isSelected = index == widget.index;

    return IconTheme(
      data: IconThemeData(
        color: isSelected ? Colors.red : Colors.black,
      ),
      child: IconButton(
        icon: icon,
        onPressed: () => widget.onChangedTab(index),
      ),
    );
  }
}
