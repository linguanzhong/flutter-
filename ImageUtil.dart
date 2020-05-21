import 'package:flutter/material.dart';

//图片加载工具类
class ImageUtil {
  static image(String url) {
    if (url!=null&&url.contains('http')) {
      return Image.network(
        url,
        width: 45,
        height: 45,
      );
    } else {
      return Image.asset(
        "images/express2.png",
        width: 45,
        height: 45,
      );
    }
  }

  //圆角图片
  static clipImage(String url, {double radius = 20.0}) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: image(url),
      ),
    );
  }

  //圆角头像
  static circleAvatar(String url) {
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
    );
  }
}
