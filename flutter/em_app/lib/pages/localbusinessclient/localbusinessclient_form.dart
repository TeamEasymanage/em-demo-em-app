import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_model.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_service.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_lib.dart'; 
 
 // [1] Uncomment For Media Upload Customization 
 /* 
import 'dart:convert'; 
import 'dart:io'; 
import 'dart:typed_data'; 
 
import 'package:file_picker/file_picker.dart'; 
import 'package:flutter/foundation.dart'; 
import 'package:em_app/em_media_upload_lib.dart';  
 */ 
 
class LocalBusinessClientForm extends StatefulWidget { 
  const LocalBusinessClientForm({Key? key}) : super(key: key); 
 
  @override 
  _LocalBusinessClientFormState createState() => _LocalBusinessClientFormState(); 
} 
 
class _LocalBusinessClientFormState extends State<LocalBusinessClientForm> { 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String idVar = ""; 
		String? nameVar = ""; 
		String? categoryVar = ""; 
		String? completeVar = ""; 
		String? projectImagesVar = ""; 
		String? clientVar = ""; 
		String? projectLeadVar = ""; 
		String? projectTeamVar = ""; 
		String? kickOfDateVar = ""; 
		String? dueDateVar = ""; 
		String? notesVar = ""; 
		String? tasksVar = ""; 
 
 // [2] Uncomment For Media Upload Customization 
 /* 
		bool isField01IsImage = true; File? valFile01; PlatformFile? valPlatFile01; String? valFile01Base64; 
 */ 
 
 
	DateTime selectedDate9 = DateTime.now();		
	TextEditingController _textEditingController9 = TextEditingController();	
		
	_selectDate9(BuildContext context) async {		
		final DateTime? selected9 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate9,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected9 != null && selected9 != selectedDate9)	{	
		  setState(() {		
			selectedDate9 = selected9;		
			_textEditingController9.text = DateFormat(emDateFmt).format(selectedDate9);		
		  });		
	  	}		
	  }		
 	
	DateTime selectedDate10 = DateTime.now();		
	TextEditingController _textEditingController10 = TextEditingController();	
		
	_selectDate10(BuildContext context) async {		
		final DateTime? selected10 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate10,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected10 != null && selected10 != selectedDate10)	{	
		  setState(() {		
			selectedDate10 = selected10;		
			_textEditingController10.text = DateFormat(emDateFmt).format(selectedDate10);		
		  });		
	  	}		
	  }		
 	
 
 
 
@override 
void didChangeDependencies() { 
    // MediaQuery.of(context) 
      emFormWidth =  getEmFormWidth(context); 
      emFormHeight = getEmFormHeight(context); 
      //print("Width | Height " + emFormWidth.toString() + " | " + emFormHeight.toString()); 
    super.didChangeDependencies(); 
} 
 
 
  @override 
  Widget build(BuildContext context) { 
	return Scaffold( 
        backgroundColor: Colors.blue.shade200, 
        appBar: AppBar( 
          title: const Text("LocalBusinessClient Add Form"), 
          centerTitle: true, 
        ), 
        body: Center( 
          child: Padding( 
                  padding: const EdgeInsets.only(top: 32.0), 
          child: Container( 
            padding: const EdgeInsets.only(top: 16.0), 
            decoration: const BoxDecoration(boxShadow: [ 
              BoxShadow( 
                color: Colors.white, 
              ), 
            ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
			 width: emFormWidth, //getEmFormWidth(context), 
            height: emFormHeight, //MediaQuery.of(context).size.height, 
            //width: formWidth , 
            // height: 590, 
            //width: MediaQuery.of(context).size.width, 
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
					//EDT-INIT-VAL   enabled: false,    initialValue: getEmStrOpt(foundRecord.id.toString()),   
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
				  // Column Details:  Srl No : [2] [ Name [Name] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Name], Name [name], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.name),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Name', 
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
					onSaved: (value) => setState(() => nameVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Category] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Category], Name [category], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.category),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Category', 
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
					onSaved: (value) => setState(() => categoryVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [Complete] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Complete], Name [complete], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.complete),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Complete', 
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
					onSaved: (value) => setState(() => completeVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [Projectimages] : EM Type [STREAM], Java Type [byte[]]  
				  //                  EM size: maxlength: 3, Display Size : 50 
				  // Flutter Details: Field Label [Project Images], Name [projectImages], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL     //IS-FILE STREAM   initialValue: getEmStrOpt(foundRecord.projectImages),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(50), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Project Images', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 3, Display Size : 50 
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
					onSaved: (value) => setState(() => projectImagesVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [Client] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 80, Display Size : 20 
				  // Flutter Details: Field Label [Client], Name [client], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.client),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Client', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 80, Display Size : 20 
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
					onSaved: (value) => setState(() => clientVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [7] [ Name [Projectlead] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Project Lead], Name [projectLead], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.projectLead),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Project Lead', 
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
					onSaved: (value) => setState(() => projectLeadVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [8] [ Name [Projectteam] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 80, Display Size : 20 
				  // Flutter Details: Field Label [Project Team], Name [projectTeam], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.projectTeam),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Project Team', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 80, Display Size : 20 
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
					onSaved: (value) => setState(() => projectTeamVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [9] [ Name [Kickofdate] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Kick Of Date], Name [kickOfDate], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController9,  
					//EDT-INIT-VAL    //IS-PICKER  initialValue: getEmStrOpt(foundRecord.kickOfDate),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Kick Of Date', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
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
					onSaved: (value) => setState(() => kickOfDateVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [kickOfDate], [Kickofdate] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate9(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate9.day}/${selectedDate9.month}/${selectedDate9.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [10] [ Name [Duedate] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Due Date], Name [dueDate], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController10,  
					//EDT-INIT-VAL    //IS-PICKER  initialValue: getEmStrOpt(foundRecord.dueDate),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Due Date', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 10, Display Size : 10 
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
					onSaved: (value) => setState(() => dueDateVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [dueDate], [Duedate] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate10(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate10.day}/${selectedDate10.month}/${selectedDate10.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [11] [ Name [Notes] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 1000, Display Size : 20 
				  // Flutter Details: Field Label [Notes], Name [notes], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.notes),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Notes', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 1000, Display Size : 20 
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
					onSaved: (value) => setState(() => notesVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [12] [ Name [Tasks] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 200, Display Size : 20 
				  // Flutter Details: Field Label [Tasks], Name [tasks], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.tasks),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Tasks', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 200, Display Size : 20 
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
					onSaved: (value) => setState(() => tasksVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
 
 // [3] Uncomment For Media Upload Customization 
 // Move / Place *Below Block* BEF Begin of Row( For Field 
 /* 
          //Processing Logic for enabling Fields For - File | Image | Video picker Upload in Base64 format 
          isField01IsImage ?  
              kIsWeb ? showPopUpGetFileWeb01(context) : showPopUpGetFile01(context) 
          : 
				//Row(  
 */ 
 
                  const SizedBox(height: 20,), 
                  Builder( 
                    builder: (context) => ButtonWidget( 
                      text: 'Submit', 
 
 // [4] Uncomment For Media Upload Customization 
 //     Uncomment 'async' in below   
                      onClicked: () // async 
                      	 { 
                        final isValid = formKey.currentState!.validate(); 
                        // FocusScope.of(context).unfocus(); 
 
                        if (isValid) { 
                          formKey.currentState!.save(); 
 
                          //Calling the post method. 
 
 // [5] Uncomment For Media Upload Customization 
 /* 
                          //Get Base64 ready 
                          await convertToBytesFile(context); 
 */ 
 
 
                          LocalBusinessClient newLocalBusinessClient = LocalBusinessClient( 
					   id: getEmIntStr(idVar) , 
					   name: nameVar , 
					   category: categoryVar , 
					   complete: completeVar , 
					   // projectImages: projectImagesVar , 
					   client: clientVar , 
					   projectLead: projectLeadVar , 
					   projectTeam: projectTeamVar , 
					   kickOfDate: kickOfDateVar , 
					   dueDate: dueDateVar , 
					   notes: notesVar , 
					   tasks: tasksVar , 
							  ); 
 
                          LocalBusinessClientService.LocalBusinessClientCreate( 
                                  newLocalBusinessClient.toJson()) 
                              .then((message) { 
                                    message == "LocalBusinessClient Added Successfully" 
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
                                  message == "LocalBusinessClient Added Successfully" 
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
        ), 
       ), 
     ); 
	} 
 
 // [6] Uncomment For Media Upload Customization 
 //     And assign to correct blob field in your table , i.e. replace 'productPictureVar' 
 /* 
Widget showPopUpGetFile01(BuildContext context) { 
      return    Column( 
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: <Widget>[ 
          ElevatedButton( 
          onPressed: () { 
                Navigator.of(context).push(MaterialPageRoute( 
                  builder: (context) =>  
                //EmUploadFile(callback: (File ) {  },) 
                EmUploadFile(callback: (val) => setState(() => valFile01 = val)) 
                 )); 
                 //print("Received Media File: "+valFile01!.path.toString()); 
 
          }, 
          child: const Text("Select From Storage or Capture via Camera"), 
          ), 
          const SizedBox(height: 10), 
          if (valFile01 != null ) Text(("Selected File: "+valFile01!.path.toString())), 
          ElevatedButton( 
          onPressed: () { 
                setState(() { 
                  valFile01 = null; 
                }); 
          }, 
          child: const Text("Clear Selection"), 
          ), 
          ], 
          ); 
 
} 
Widget showPopUpGetFileWeb01(BuildContext context) { 
      return    Column( 
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: <Widget>[ 
          ElevatedButton( 
          onPressed: () { 
                Navigator.of(context).push(MaterialPageRoute( 
                  builder: (context) =>  
                //EmUploadFile(callback: (File ) {  },) 
                EmUploadFileWeb(callback: (val) => setState(() => valPlatFile01 = val)) 
                 )); 
                 //print("Received Media File: "+valPlatFile01!.path.toString()); 
 
          }, 
          child: const Text("Select From Storage"), 
          ), 
          const SizedBox(height: 10), 
          if (valPlatFile01 != null ) Text(("Selected File: "+valPlatFile01!.name)), 
          ElevatedButton( 
          onPressed: () { 
                setState(() { 
                  valPlatFile01 = null; 
                }); 
          }, 
          child: const Text("Clear Selection"), 
          ), 
          ], 
          ); 
 
} 
 
 
Future<void> convertToBytesFile(BuildContext context) async { 
 
              if (isField01IsImage) {  
                if(kIsWeb) { 
                    await convertToBytesFileWeb01(context); 
                    productPictureVar = valFile01Base64; 
 
                } else { 
                    await convertToBytesFile01(context); 
                    productPictureVar = valFile01Base64; 
                } 
              } 
} 
 
Future<void> convertToBytesFile01(BuildContext context) async { 
    if (valFile01 != null) { 
      print("Reading File:" + valFile01!.path); 
      Uint8List imgbytes = await valFile01!.readAsBytes(); 
      print("File Size:" + imgbytes.length.toString()); 
      String base64ImgBytes = base64.encode(imgbytes); 
      setState(() { 
        valFile01Base64 = base64ImgBytes; 
      }); 
    } 
     var snackBar = const SnackBar( 
       content: Text("Processing File Upload ..."), 
     ); 
     ScaffoldMessenger.of(context).showSnackBar(snackBar); 
}  
 
Future<void> convertToBytesFileWeb01(BuildContext context) async { 
    if (valPlatFile01 != null) { 
      Uint8List? imgbytes = valPlatFile01!.bytes; 
      // print("File Size:" + imgbytes.length.toString()); 
      String base64ImgBytes = base64.encode(imgbytes!); 
      setState(() { 
        valFile01Base64 = base64ImgBytes; 
      }); 
    } 
     var snackBar = const SnackBar( 
       content: Text("Processing File Upload ..."), 
     ); 
     ScaffoldMessenger.of(context).showSnackBar(snackBar); 
  } 
 
 */ 
 
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
 
 
