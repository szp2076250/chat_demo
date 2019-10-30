import 'package:abc/global/global.dart';
import 'package:flutter/material.dart';

class CommonItemDecroate {
  final Widget left;
  final Widget center;
  final Widget right;
  final double hMargin;
  //margin of verital
  final double vMargin;
  final Color underlineColor;
  final double underlineHeight;
  final double underlineLeftPadding;
  const CommonItemDecroate(
      {this.left,
      this.center,
      this.right,
      this.underlineHeight = 1,
      this.underlineColor = gColor.lightGray,
      this.underlineLeftPadding = 60,
      this.hMargin = 10,
      this.vMargin = 10});
}

class CommonItem extends StatefulWidget {
  final CommonItemDecroate decroate;
  CommonItem({this.decroate});
  @override
  _CommonItemState createState() => _CommonItemState();
}

class _CommonItemState extends State<CommonItem> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(vertical: widget.decroate.vMargin),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: widget.decroate.hMargin,
            ),
            Center(child:widget.decroate.left ?? Container()),
            SizedBox(
              width: widget.decroate.hMargin,
            ),
            Expanded(child: widget.decroate.center ?? Container()),
            SizedBox(
              width: widget.decroate.hMargin,
            ),
            Center(child:widget.decroate.right ?? Container()),
            SizedBox(
              width: widget.decroate.hMargin,
            ),
          ],
        ),
      ),
      Container(
        color: widget.decroate.underlineColor,
        height: widget.decroate.underlineHeight,
        margin: EdgeInsets.only(left: widget.decroate.underlineLeftPadding),
      )
    ]);
  }
}
