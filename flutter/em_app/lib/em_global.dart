// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:em_app/em_param.dart';
import 'package:em_app/main.dart';

// -------------------------------------------------------
// EM Global Variables and application properties
// -------------------------------------------------------
String apiUrl = "127.0.0.1:9080";
String apiPathPrefix = "/emdbrest";

// ------ To enable Secure REST API calling with Http Basic Auth ---------------
String apiUsername = 'emAdmin'; //'emUser'; //'user';
String apiPassword = 'emAdmin123'; //'emUser123';
bool isApiCallSecure = false;

// ------ To configure API calling settings ---------------
String timeErrStr = "Request is taking too much time!";
String connErrStr = "Check your Server Connection!";
int apiCallTimeoutSec = 10;

// -------------------------------------------------------
// EM Regional Formatting
// EM DATE and TIME Formatting are handled via individual widgets and API calls
// EM Number and Currency Formatting For EM Types NUMBER | MONEY handled via flags and functions in this file
// (Note: EM Types DATETIME|FLOAT|DOUBLE are not formatted)
// To disable any NUMBER | MONEY formatting set flag to false below
// -------------------------------------------------------

String emDateFmt = emParamDateFmt; 
String emTimeFmt = emParamTimeFmt; 

String emLocale = emParamLocale;
bool isEmNumFmt = true;
bool isEmCurFmt = true;

// ------ Some flutter widget used global fixed settings ---------------
double emFormFixedHeight  = 700; 	
double emFormFixedWidth  = 390; 	

double emImageFixedHeight  = 400; 	
double emImageFixedWidth  = 300; 	

// -------------------------------------------------------
// EM Library Functions
// Handling of empty or null values for non-key columns
// -------------------------------------------------------

String getEmStrOpt(String? dataStr) {
  String ret1 = "";
  if (dataStr != null) {
    ret1 = dataStr;
  }
  return ret1;
}

int? getEmIntStrOpt(String? dataStr) {
  int? ret1;
  if (dataStr != null) {
    //print("val 0 - $dataStr ");
    try {
      ret1 = int.parse(getEmStrOpt(dataStr));
    } catch (e) {
      print(e);
    }
    //print("val 1 - $ret1 ");
  }
  return ret1;
}

int getEmIntStr(String? dataStr) {
  int ret1 = 0;
  if (dataStr != null) {
    try {
      ret1 = int.parse(getEmStrOpt(dataStr));
    } catch (e) {
      print(e);
    }
  }
  return ret1;
}

double? getEmDoubleStrOpt(String? dataStr) {
  double? ret1;
  if (dataStr != null) {
    try {
      ret1 = double.parse(getEmStrOpt(dataStr));
    } catch (e) {
      print(e);
    }
  }
  return ret1;
}

double getEmDoubleStr(String? dataStr) {
  double ret1 = 0;
  if (dataStr != null) {
    try {
      ret1 = double.parse(getEmStrOpt(dataStr));
    } catch (e) {
      print(e);
    }
  }
  return ret1;
}

bool? getEmBoolStrOpt(String? dataStr) {
  bool? ret1;
  //dataStr as bool;
  if (dataStr != null) {
    if (dataStr == "true") {
      ret1 = true;
    }
    if (dataStr == "t") {
      ret1 = true;
    }
    if (dataStr == "1") {
      ret1 = true;
    }
    if (dataStr == "false") {
      ret1 = false;
    }
    if (dataStr == "f") {
      ret1 = false;
    }
    if (dataStr == "0") {
      ret1 = false;
    }
  }
  return ret1;
}

bool getEmBoolStr(String? dataStr) {
  bool ret1 = false;
  if (dataStr != null) {
    if (dataStr == "true") {
      ret1 = true;
    }
    if (dataStr == "t") {
      ret1 = true;
    }
    if (dataStr == "1") {
      ret1 = true;
    }
    if (dataStr == "false") {
      ret1 = false;
    }
    if (dataStr == "f") {
      ret1 = false;
    }
    if (dataStr == "0") {
      ret1 = false;
    }
  }
  return ret1;
}

// -------------------------------------------------------

String getEmFmtNumOpt(dynamic numVal) {
  String ret1 = "";

  switch (isEmNumFmt) {
    case true:
      {
        if (numVal != null) {
          ret1 =
              NumberFormat.decimalPattern(emLocale).format(numVal).toString();
        }
      }
      break;
    case false:
      {
        ret1 = numVal.toString();
      }
      break;
  }
  return ret1;
}

String getEmFmtCurOpt(dynamic numVal) {
  String ret1 = "";

  switch (isEmCurFmt) {
    case true:
      {
        if (numVal != null) {
          ret1 =
              NumberFormat.currency(locale: emLocale).format(numVal).toString();
        }
      }
      break;
    case false:
      {
        ret1 = numVal.toString();
      }
      break;
  }
  return ret1;
}

// -------------------------------------------------------

Map<String, String> getEmApiHeaders() {
  String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$apiUsername:$apiPassword'));
  // print(basicAuth);

  Map<String, String> headers1 = {'EmMode01': ''};

  if (isApiCallSecure) {
    headers1 = {'Authorization': basicAuth};
  }
  //print(headers1);
  return headers1;
  //return <String, String>{"Authorization": basicAuth};
}

Map<String, String> getEmApiHeadersCU() {
  //String basicAuth =
  //'Basic ' + base64Encode(utf8.encode('$apiUsername:$apiPassword'));
  //'Content-Type': 'application/json'
  Map<String, String> headers2 = {'Content-Type': 'application/json'};
  if (isApiCallSecure) {
    headers2.addAll(getEmApiHeaders());
  }
  //print(headers2);
  return headers2;
}

// -------------------------------------------------------

//Show a proper error message to the user

class EmShowProgress extends StatefulWidget {
  final String msg;
  const EmShowProgress({Key? key, required this.msg}) : super(key: key);

  @override
  _EmShowProgressState createState() => _EmShowProgressState();
}

class _EmShowProgressState extends State<EmShowProgress> {
  int secondsTimeOut = apiCallTimeoutSec;
  Timer? timer;
  bool _showAlert = false;

  @override
  void initState() {
    super.initState();
    timer = Timer(Duration(seconds: secondsTimeOut), () {
      setState(() {
        _showAlert = true;
      });
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _showAlert
        ? AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
                widget.msg +
                    " (Timeout is set to : " +
                    secondsTimeOut.toString() +
                    " sec)",
                style: TextStyle(
                  color: Colors.red.shade500,
                  //fontSize: 20,
                  //fontWeight: FontWeight.w600
                )),
            actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp())),
                  child: const Text('OK'),
                ),
              ])
        : const Center(child: CircularProgressIndicator());
  }
}
