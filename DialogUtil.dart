import 'package:flutter/material.dart';
import 'package:kdbflutter/common/GDimens.dart';
import 'package:kdbflutter/widgets/TextWidget.dart';

//Dialog工具类
class DialogUtil {
  static showDialogMethod(BuildContext context, String title, String message,
      VoidCallback rightBtnBack) {
    showDialog<Null>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: GDimens.font_large, color: GDimens.mainColor)),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextWidget(
                  message,
                  fontsize: GDimens.font_large,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: TextWidget(
                '取消',
                fontsize: GDimens.font_large,
                color: GDimens.mainColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: TextWidget(
                '确定',
                fontsize: GDimens.font_large,
                color: GDimens.mainColor,
              ),
              onPressed: rightBtnBack,
            ),
          ],
        );
      },
    );
  }
}
