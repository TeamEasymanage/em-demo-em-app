import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_model.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_service.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_lib.dart'; 
 
class EventInvitationViewEditDd extends StatefulWidget { 
  //need 1st record column and type also 
  final int idSelected; 
  const EventInvitationViewEditDd({Key? key, required this.idSelected}) : super(key: key); 
 
  @override 
  _EventInvitationViewEditDdState createState() => _EventInvitationViewEditDdState(); 
} 
 
class _EventInvitationViewEditDdState extends State<EventInvitationViewEditDd> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  bool _isKeySelected = false; 	
  //double fullFormHeight = 700; 	
 	
  List<String> _ids = ["Select A Key Value"]; 	
  String _chosenValue = "Select A Key Value"; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _chosenValue = widget.idSelected.toString();	
    _loading = true;	
	
    EventInvitationViewService.EventInvitationViewViewAllIds().then((ids) { 	
      if (ids is String) {	
        setState(() {	
          errorMsg = ids;	
        });	
      }	
      setState(() { 	
        _ids = ids; 	
		//For 1st Column int | double , we call DropDown with value [0], hence need this 	
        _ids.insert(0, "0");	
        _ids.insert(0, "Select A Key Value");	
		 //Remove duplicates 	
        _ids = _ids.toSet().toList();	
        _loading = false;	
      });	
    });	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("EventInvitationView Edit Dd Form"), 	
          centerTitle: true, 	
        ), 	
        body: _loading 	
            ? EmShowProgress(msg: errorMsg)	
            : SingleChildScrollView(	
                child: Row(	
                  mainAxisAlignment: MainAxisAlignment.center,	
                  children: [	
                    Padding(	
                      padding: const EdgeInsets.only(top: 32.0),	
                      child: Container(	
						 width: emFormFixedWidth, //getEmFormWidth(context),	
                        //width: 600,	
                        //height: _isKeySelected ? fullFormHeight : 150,	
                        // margin: EdgeInsets.only(bottom: _isKeySelected ? 0 : 440),	
                        decoration: const BoxDecoration(	
                            boxShadow: [BoxShadow(color: Colors.white)],	
                            borderRadius:	
                                BorderRadius.all(Radius.circular(10.0))),	
                        child: Column(	
                          children: [	
                            Padding(	
                              padding: const EdgeInsets.only(top: 44),	
                              child: SingleChildScrollView(	
                                child: Row(	
                                  mainAxisAlignment: MainAxisAlignment.center,	
                                  children: [	
                                    const Text("Please Select A Key Value",	
                                      //style: Theme.of(context).textTheme.bodyText1,	
                                    ),	
                                    const SizedBox(	
                                      width: 24,	
                                    ),	
                                    DropdownButton<String>(	
                                      borderRadius: BorderRadius.circular(5),	
                                      dropdownColor: Colors.white,	
                                      value: _chosenValue,	
                                      style: const TextStyle(	
                                          //fontSize: 18,	
                                          //fontWeight: FontWeight.w400,	
                                          color: Colors.black),	
                                      items: _ids	
                                          .map((e) => DropdownMenuItem(	
                                                child: Text(e),	
                                                value: e,	
                                              ))	
                                          .toList(),	
                                      hint: const Text(	
                                        "Please select a value",	
                                        //style: Theme.of(context).textTheme.bodyText1,	
                                      ),	
                                      onChanged: (value) {	
                                        setState(() {	
                                          _isKeySelected = true;	
                                          _chosenValue = value.toString();	
                                        });	
                                      },	
                                    ),	
                                  ],	
                                ),	
                              ),	
                            ),	
                            const SizedBox(	
                              height: 20,	
                      ), 	
                      _isKeySelected 	
                          ? FutureBuilder<EventInvitationView>( 	
                              future: EventInvitationViewService 	
                                      .EventInvitationViewQuery(getEmIntStr(_chosenValue)) 	
                                  .then((value) => value), 	
                              builder: (context, snapshot) { 	
                                switch (snapshot.connectionState) { 	
                                  case ConnectionState.waiting: 	
                                    return const Center( 	
                                        child: CircularProgressIndicator()); 	
                                  default: 	
                                    if (snapshot.hasError) { 	
                                      return const Center( 	
                                          child: Text('Record not found, Select Valid Key Value')); 	
                                    } else { 	
                                      return EventInvitationViewEditDdRec( 	
                                          eventInvitationView: snapshot.data!); 	
                                    } 	
                                } 	
                              }) 	
                          : const SizedBox( 	
                              height: 0, 	
                            ) 	
                    ], 	
                  ), 	
                ), 	
               ),	
             ],	
           ),	
        )); 	
  } 	
} 
 
class EventInvitationViewEditDdRec extends StatefulWidget { 
  final EventInvitationView eventInvitationView; 
  const EventInvitationViewEditDdRec({Key? key, required this.eventInvitationView}) : super(key: key); 
 
  @override 
  _EventInvitationViewEditDdRecState createState() => _EventInvitationViewEditDdRecState(); 
} 
 
class _EventInvitationViewEditDdRecState extends State<EventInvitationViewEditDdRec> { 
  EventInvitationView foundEventInvitationView = EventInvitationView(id: 0 ); 
 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String idVar = ""; 
		String? guestVar = ""; 
		String? addressVar = ""; 
		String? phoneNumberVar = ""; 
		String? plusOneVar = ""; 
		String? guestCountVar = ""; 
		String? relatedEventVar = ""; 
 
 
 
 
@override 
void didChangeDependencies() { 
    // MediaQuery.of(context) 
      emFormWidth =  getEmFormWidth(context); 
      emFormHeight = getEmFormHeight(context); 
      //print("Width | Height " + emFormWidth.toString() + " | " + emFormHeight.toString()); 
    super.didChangeDependencies(); 
} 
 
 
  @override 
  void initState() { 
    super.initState(); 
    setState(() { 
      foundEventInvitationView = widget.eventInvitationView; 
    }); 
  } 
 
 
  @override 
  Widget build(BuildContext context) { 
    return SingleChildScrollView( 
 
          child: Container( 
            padding: const EdgeInsets.only(top: 8.0), 
            decoration: const BoxDecoration(boxShadow: [ 
              BoxShadow( 
                color: Colors.white, 
              ), 
            ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
			  width: emFormWidth, //getEmFormWidth(context), 
	          height: emFormHeight, //MediaQuery.of(context).size.height, 
   	      //width: MediaQuery.of(context).size.width, 
             //width: 600, 
             //height: 620, 
           child: SingleChildScrollView( 
            child: Form( 
              key: formKey, 
              //autovalidateMode: AutovalidateMode.onUserInteraction, 
 
              child: Padding( 
                padding: const EdgeInsets.all(16.0), 
                child: SingleChildScrollView( 
                  child: Column(  
                children: [ 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [1] [ Name [Id] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Id], Name [id], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					   enabled: false,    initialValue: getEmStrOpt(foundEventInvitationView.id.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Id', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => idVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [2] [ Name [Guest] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Guest], Name [guest], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.guest),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Guest', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 40, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => guestVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Address] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 140, Display Size : 20 
				  // Flutter Details: Field Label [Address], Name [address], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.address),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Address', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 140, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => addressVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [PhoneNumber] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 15, Display Size : 20 
				  // Flutter Details: Field Label [Phone Number], Name [phoneNumber], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.phoneNumber),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Phone Number', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 15, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => phoneNumberVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [PlusOne] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Plus One], Name [plusOne], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.plusOne),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Plus One', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 40, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => plusOneVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [GuestCount] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Guest Count], Name [guestCount], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.guestCount.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Guest Count', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
					//for display width , adjust parent available space  
					validator: (value) { 
					  if (value!.isEmpty) {  
						//not mandatory - no numeric chk  
					  } else {  
					  	if (!_isNumeric(value)) { 
							return 'Enter a valid Numeric value'; } 
					  }  
					  return null;  
					}, 
					//maxLength: 30, 
					onSaved: (value) => setState(() => guestCountVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [7] [ Name [RelatedEvent] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Related Event], Name [relatedEvent], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundEventInvitationView.relatedEvent),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Related Event', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 40, Display Size : 20 
					//for display width , adjust parent available space  
					/*  
					validator: (value) { 
					  if (value!.isEmpty) {  
						return  'Field can not be empty'; }  
					  if (!_isNumeric(value)) { 
						return ' | Enter a valid Numeric value'; } 
					  return null;  
					}, 
					*/  
					//maxLength: 30, 
					onSaved: (value) => setState(() => relatedEventVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
                  const SizedBox(height: 20,), 
                  Builder( 
                    builder: (context) => ButtonWidget( 
                      text: 'Submit', 
                      onClicked: () { 
                        final isValid = formKey.currentState!.validate(); 
                        // FocusScope.of(context).unfocus(); 
 
                        if (isValid) { 
                          formKey.currentState!.save(); 
 
                          //Calling the post method. 
 
                          EventInvitationView newEventInvitationView = EventInvitationView( 
					   id: getEmIntStr(idVar) , 
					   guest: guestVar , 
					   address: addressVar , 
					   phoneNumber: phoneNumberVar , 
					   plusOne: plusOneVar , 
					   guestCount: getEmIntStrOpt(guestCountVar) , 
					   relatedEvent: relatedEventVar , 
							  ); 
 
                          EventInvitationViewService.EventInvitationViewEdit( 
                                  newEventInvitationView.id, 
                                  newEventInvitationView) 
                              .then((message) { 
                                    message == "Record Updated Successfully" 
                                        ? null	
                                        : showDialog(	
                                            context: context,	
                                            builder: (ctx) => AlertDialog(	
                                              title: const Text("Error Status"),	
                                              content: Text(message),	
                                              actions: <Widget>[	
                                                ElevatedButton(	
                                                  onPressed: () {	
                                                    Navigator.of(ctx).pop();	
                                                  },	
                                                  child: const Text("OK"),	
                                                ),	
                                              ],	
                                            ),	
                                          );	
	
                            final snackBar = SnackBar( 
                              padding: const EdgeInsets.symmetric( 
                                  horizontal: 50, vertical: 8), 
                              content: Text( 
                                message, 
                                style: Theme.of(context).textTheme.headline5, 
                              ), 
                              backgroundColor: 
                                  message == "Record Updated Successfully" 
                                      ? Colors.green 
                                      : Colors.redAccent, 
                            ); 
                            ScaffoldMessenger.of(context) 
                                .showSnackBar(snackBar); 
                          }); 
                        } 
                      }, 
                    ), 
                  ) 
                ], 
              ), 
            ), 
          ), 
          ), 
          ), 
          ), 
      ); 
  } 
} 
 
 
bool _isNumeric(String s) { 
  // ignore: unnecessary_null_comparison 
  if (s == null) { 
    return false; 
  } 
  return double.tryParse(s) != null; 
} 
 
class ButtonWidget extends StatelessWidget { 
  final String text; 
  final VoidCallback onClicked; 
 
  const ButtonWidget({ 
    required this.text, 
    required this.onClicked, 
    Key? key, 
  }) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) => ElevatedButton( 
        child: Text( 
          text, 
          style: const TextStyle(fontSize: 24, color: Colors.white), 
        ), 
        style: ButtonStyle( 
            backgroundColor: MaterialStateProperty.all<Color>( 
                Theme.of(context).primaryColor), 
            minimumSize: MaterialStateProperty.all(const Size(300, 40)),  
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>( 
                const EdgeInsets.symmetric(horizontal: 2.0, vertical: 16.0))), 
        onPressed: onClicked, 
      ); 
} 
 
 
