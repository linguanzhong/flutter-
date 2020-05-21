import 'package:flutter/material.dart';
//延时执行
class DelayedUtil{
  
  static delayed(int milliseconds,  VoidCallback voidCallback){
    // 延时milliseconds执行返回
    Future.delayed(Duration(milliseconds: milliseconds),voidCallback);
  }
  //  使用: DelayedUtil.delayed(3000, () { });
}