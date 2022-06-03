import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_model.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_service.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_lib.dart'; 
 
 // [1] Uncomment For Media Upload Customization 
 /* 
import 'dart:convert'; 
import 'dart:io'; 
import 'dart:typed_data'; 
 
import 'package:file_picker/file_picker.dart'; 
import 'package:flutter/foundation.dart'; 
import 'package:em_app/em_media_upload_lib.dart';  
 */ 
 
class SalesCustomerResponseForm extends StatefulWidget { 
  const SalesCustomerResponseForm({Key? key}) : super(key: key); 
 
  @override 
  _SalesCustomerResponseFormState createState() => _SalesCustomerResponseFormState(); 
} 
 
class _SalesCustomerResponseFormState extends State<SalesCustomerResponseForm> { 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String idVar = ""; 
		String? customerNameVar = ""; 
		String? submissionTimeVar = ""; 
		String? emailVar = ""; 
		String? companyNameVar = ""; 
		String? productSatisfactionVar = ""; 
		String? serviceSatisfactionVar = ""; 
		String? productComparisonVar = ""; 
		String? serviceComparisonVar = ""; 
		String? reasonsVar = ""; 
		String? ratingVar = ""; 
		String? highlightVar = ""; 
		String? promoterVar = ""; 
		String? insightsVar = ""; 
 
 // [2] Uncomment For Media Upload Customization 
 /* 
		bool isField01IsImage = true; File? valFile01; PlatformFile? valPlatFile01; String? valFile01Base64; 
 */ 
 
 
 
 
 
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
          title: const Text("SalesCustomerResponse Add Form"), 
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
				  // Column Details:  Srl No : [2] [ Name [CustomerName] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Customer Name], Name [customerName], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.customerName),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Customer Name', 
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
					onSaved: (value) => setState(() => customerNameVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Submissiontime] : EM Type [DATETIME], Java Type [Calendar]  
				  //                  EM size: maxlength: 19, Display Size : 19 
				  // Flutter Details: Field Label [Submission Time], Name [submissionTime], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.submissionTime),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(19), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Submission Time', 
					  border: OutlineInputBorder(), 
						// filled: true, //for limiting size width/height 
					), 
					//em size: maxlength: 19, Display Size : 19 
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
					onSaved: (value) => setState(() => submissionTimeVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [Email] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Email], Name [email], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.email),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Email', 
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
					onSaved: (value) => setState(() => emailVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [CompanyName] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Company Name], Name [companyName], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.companyName),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Company Name', 
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
					onSaved: (value) => setState(() => companyNameVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [ProductSatisfaction] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Product Satisfaction], Name [productSatisfaction], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.productSatisfaction),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Product Satisfaction', 
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
					onSaved: (value) => setState(() => productSatisfactionVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [7] [ Name [ServiceSatisfaction] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Service Satisfaction], Name [serviceSatisfaction], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.serviceSatisfaction),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Service Satisfaction', 
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
					onSaved: (value) => setState(() => serviceSatisfactionVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [8] [ Name [ProductComparison] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Product Comparison], Name [productComparison], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.productComparison),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Product Comparison', 
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
					onSaved: (value) => setState(() => productComparisonVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [9] [ Name [ServiceComparison] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Service Comparison], Name [serviceComparison], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.serviceComparison),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Service Comparison', 
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
					onSaved: (value) => setState(() => serviceComparisonVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [10] [ Name [Reasons] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 200, Display Size : 20 
				  // Flutter Details: Field Label [Reasons], Name [reasons], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.reasons),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Reasons', 
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
					onSaved: (value) => setState(() => reasonsVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [11] [ Name [Rating] : EM Type [NUMBER], Java Type [long]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Rating], Name [rating], Type [int]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.rating.toString()),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Rating', 
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
					onSaved: (value) => setState(() => ratingVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [12] [ Name [Highlight] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Highlight], Name [highlight], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.highlight),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Highlight', 
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
					onSaved: (value) => setState(() => highlightVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [13] [ Name [Promoter] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Promoter], Name [promoter], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.promoter),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Promoter', 
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
					onSaved: (value) => setState(() => promoterVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [14] [ Name [Insights] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Insights], Name [insights], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					//EDT-INIT-VAL      initialValue: getEmStrOpt(foundRecord.insights),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Insights', 
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
					onSaved: (value) => setState(() => insightsVar = value.toString()), 
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
 
 
                          SalesCustomerResponse newSalesCustomerResponse = SalesCustomerResponse( 
					   id: getEmIntStr(idVar) , 
					   customerName: customerNameVar , 
					   submissionTime: submissionTimeVar , 
					   email: emailVar , 
					   companyName: companyNameVar , 
					   productSatisfaction: productSatisfactionVar , 
					   serviceSatisfaction: serviceSatisfactionVar , 
					   productComparison: productComparisonVar , 
					   serviceComparison: serviceComparisonVar , 
					   reasons: reasonsVar , 
					   rating: getEmIntStrOpt(ratingVar) , 
					   highlight: highlightVar , 
					   promoter: promoterVar , 
					   insights: insightsVar , 
							  ); 
 
                          SalesCustomerResponseService.SalesCustomerResponseCreate( 
                                  newSalesCustomerResponse.toJson()) 
                              .then((message) { 
                                    message == "SalesCustomerResponse Added Successfully" 
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
                                  message == "SalesCustomerResponse Added Successfully" 
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
 
 
