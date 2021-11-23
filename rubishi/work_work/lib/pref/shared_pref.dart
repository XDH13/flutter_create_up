import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:work_work/pref/PersonalBean.dart';




class   SharedPreferencesUtils{
  /***
   *
   * 存数据
   *
   */

  static Object savePreference(BuildContext context , String key , Object value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(value is  int ){
      await prefs.setInt(key, value);
    }else if(value is double){
      await prefs.setDouble(key, value);
    }else if(value is bool){
      await prefs.setBool(key, value);
    }else if(value is String){
      await prefs.setString(key, value);
    }else if(value is List){
      await prefs.setStringList(key, value);
    }  else {
      throw new Exception("不能得到这种类型");
    }
  }


  /***
   *
   * 取数据
   *
   *
   */
  static Future  getPreference( Object context , String key ,Object defaultValue) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(defaultValue is  int) {
      return prefs.getInt(key);
    }
    else if(defaultValue is  double) {
      return prefs.getDouble(key);
    }
    else if(defaultValue is bool) {
      return prefs.getBool(key);
    }
    else if(defaultValue is String) {
      return prefs.getString(key);
    }
    else if(defaultValue is List) {
      return prefs.getStringList(key);
    }
    else {
      throw new Exception("不能得到这种类型");
    }
  }

  /***
   * 删除指定数据
   */
  static void    remove(String key)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key); //删除指定键
  }
  /***
   * 清空整个缓存
   */
  static void    clear()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear(); ////清空缓存
  }




  /**
   * 3.存储账本bookBean的list
   *
   * List<Object> phoneList
   */
  static void setSelectBean(BuildContext context,personalbean bean, String key) async{
    String jsonStringA = jsonEncode(bean);
    print("jsonStringA   --------- >"+ jsonStringA);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key,jsonStringA);
  }

  /**
   * 存储  List<Object> phoneList
   *
   * List<Object> phoneList
   */
  static void setSelectBeanList(BuildContext context,personalbean person, String key) async{
    String jsonStringA = jsonEncode(person);
    print("jsonStringA   --------- >"+ jsonStringA);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key,jsonStringA);
  }



  /**
   * 获取  List<Object> phoneList
   *
   * List<Object> phoneList
   */
  static Future getSelectBean(BuildContext context, String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String  getdata = await prefs.getString("data");
    personalbean person = json.decode(getdata);
    return person;
  }

}