/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_ch_5_gen_q3_5_interface_inheritance_base.dart';

// TODO: Export any libraries intended for clients of this package.
/*
Practice Question 5: Interface Inheritance
Question:

Create an interface Device with a method turnOn.

Create another interface SmartDevice that extends Device and adds a 
method connectToWiFi.

Implement a class SmartTV that implements SmartDevice. The turnOn 
method should print “TV turned on”, and connectToWiFi should print 
“Connected to WiFi”.

একটা interface তৈরি করতে হবে যার নাম দিতে হবে Device, 
একটা মেথড আছে turnOn কোন  implementation নাই।

আর একটা interface SmartDevice <-- এটি extends করবে Device আর একটা
মেথড connectToWiFi add  করবে।


এর পরে একটা SmartTV implement করতে হবে যেটি SmartDevice কে implement
করে

এখানে কাজ হবে 
--> Grand father --> Father  --> child এই সিরিয়াল অনুযায়ী কাজ হবে ।
*/

abstract class Device {
  String turnOn(); //  turnOn()মেথড একটা String return দিবে। কোন প্যারমিটার নিবে না।
  // abstract তাই এটি শুধু পরিকল্পনা
}
// এখানে একটা abstract class তৈরি করতে হবে যার মধ্যে আছে 
// interface তৈরি করতে হবে যার যার নাম হবে SmartDevice
abstract class SmartDevice implements Device {
  String connectToWiFi();
   //connectToWiFi() মেথড একটা String return দিবে। কোন প্যারমিটার নিবে না।
/*
   SmartDevice কে  implement  করবে  Device.
   main class 'Device'  এর পরিকল্পনা এখানে implement করতে হচ্ছে না abstract দুটি-ই interface
   একটা interface এর মধ্যে আর একটা interface এর দেওয়ার দরকার হয় না।
   SmartDevic এ concrete যে implementation করবে সেটি Grandfather এবং father দুটি কে implement  করতে 
   হবে।

   */

}
// এখানে  SmartDevice দ্বারা SmartTV কে implement করবে, মানে child এখন implement এর কাজ করবে।
// grandfather এবং father এর মধ্যে একটা করে ফিল্ড আছে তাই child কে সব গুলোকে implement 
// করতে হবে ।

class SmartTV implements SmartDevice {
  @override
  String turnOn() {
    return 'TV turned on';
  }

  @override
  String connectToWiFi() {
    return 'Connected to WiFi';
  }
}
