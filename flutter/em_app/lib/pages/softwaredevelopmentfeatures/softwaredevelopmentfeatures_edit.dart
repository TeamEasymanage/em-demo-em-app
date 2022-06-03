import 'package:flutter/material.dart'; 
import 'package:intl/intl.dart';  
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_model.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_service.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_lib.dart'; 
 
class SoftwareDevelopmentFeaturesEdit extends StatefulWidget { 
  //need 1st record column and type also 
  final int idSelected; 
  const SoftwareDevelopmentFeaturesEdit({Key? key, required this.idSelected}) : super(key: key); 
 
  @override 
  _SoftwareDevelopmentFeaturesEditState createState() => _SoftwareDevelopmentFeaturesEditState(); 
} 
 
class _SoftwareDevelopmentFeaturesEditState extends State<SoftwareDevelopmentFeaturesEdit> { 
 
  String errorMsg = timeErrStr; 
 
  bool _loading = false; 	
  bool _isKeySelected = false; 	
  //double fullFormHeight = 700; 	
 	
  //List<String> _ids = ["Select A Key Value"]; 	
  String _chosenValue = ""; 	
	
  @override	
  void initState() {	
    super.initState();	
	
    _chosenValue = widget.idSelected.toString();	
    _loading = true;	
	
    //Key Value passed, Edit Record Mode 	
		_isKeySelected = true; 	
		_loading = false;	
    /*	
    SoftwareDevelopmentFeaturesService.SoftwareDevelopmentFeaturesViewAllIds().then((ids) { 	
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
    */	
  } 	
 	
  @override 	
  Widget build(BuildContext context) { 	
    return Scaffold( 	
	     backgroundColor: Colors.blue.shade200,	
        appBar: AppBar( 	
          title: const Text("SoftwareDevelopmentFeatures Edit  Form"), 	
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
                            const SizedBox(	
                              height: 10,	
                      ), 	
                      _isKeySelected 	
                          ? FutureBuilder<SoftwareDevelopmentFeatures>( 	
                              future: SoftwareDevelopmentFeaturesService 	
                                      .SoftwareDevelopmentFeaturesQuery(getEmIntStr(_chosenValue)) 	
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
                                      return SoftwareDevelopmentFeaturesEditRec( 	
                                          softwareDevelopmentFeatures: snapshot.data!); 	
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
 
class SoftwareDevelopmentFeaturesEditRec extends StatefulWidget { 
  final SoftwareDevelopmentFeatures softwareDevelopmentFeatures; 
  const SoftwareDevelopmentFeaturesEditRec({Key? key, required this.softwareDevelopmentFeatures}) : super(key: key); 
 
  @override 
  _SoftwareDevelopmentFeaturesEditRecState createState() => _SoftwareDevelopmentFeaturesEditRecState(); 
} 
 
class _SoftwareDevelopmentFeaturesEditRecState extends State<SoftwareDevelopmentFeaturesEditRec> { 
  SoftwareDevelopmentFeatures foundSoftwareDevelopmentFeatures = SoftwareDevelopmentFeatures(id: 0 ); 
 
 
  double emFormHeight  = emFormFixedHeight;  
  double emFormWidth  = emFormFixedWidth;  
 
  static final formKey = GlobalKey<FormState>(); 
		String idVar = ""; 
		String? featureVar = ""; 
		String? statusVar = ""; 
		String? productOwnerVar = ""; 
		String? launchOkrsVar = ""; 
		String? featureCompleteDateVar = ""; 
		String? featureLaunchDateVar = ""; 
		String? marketingLaunchDateVar = ""; 
		String? complexityVar = ""; 
		String? valueVar = ""; 
 
 
	DateTime selectedDate6 = DateTime.now();		
	TextEditingController _textEditingController6 = TextEditingController();	
		
	_selectDate6(BuildContext context) async {		
		final DateTime? selected6 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate6,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected6 != null && selected6 != selectedDate6)	{	
		  setState(() {		
			selectedDate6 = selected6;		
			_textEditingController6.text = DateFormat(emDateFmt).format(selectedDate6);		
		  });		
	  	}		
	  }		
 	
	DateTime selectedDate7 = DateTime.now();		
	TextEditingController _textEditingController7 = TextEditingController();	
		
	_selectDate7(BuildContext context) async {		
		final DateTime? selected7 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate7,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected7 != null && selected7 != selectedDate7)	{	
		  setState(() {		
			selectedDate7 = selected7;		
			_textEditingController7.text = DateFormat(emDateFmt).format(selectedDate7);		
		  });		
	  	}		
	  }		
 	
	DateTime selectedDate8 = DateTime.now();		
	TextEditingController _textEditingController8 = TextEditingController();	
		
	_selectDate8(BuildContext context) async {		
		final DateTime? selected8 = await showDatePicker(		
		  context: context,		
		  initialDate: selectedDate8,		
		  firstDate: DateTime(1900),		
		  lastDate: DateTime(2100),		
		);		
		
		if (selected8 != null && selected8 != selectedDate8)	{	
		  setState(() {		
			selectedDate8 = selected8;		
			_textEditingController8.text = DateFormat(emDateFmt).format(selectedDate8);		
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
  void initState() { 
    super.initState(); 
    setState(() { 
      foundSoftwareDevelopmentFeatures = widget.softwareDevelopmentFeatures; 
			      _textEditingController6.text = getEmStrOpt(foundSoftwareDevelopmentFeatures.featureCompleteDate); 
			      _textEditingController7.text = getEmStrOpt(foundSoftwareDevelopmentFeatures.featureLaunchDate); 
			      _textEditingController8.text = getEmStrOpt(foundSoftwareDevelopmentFeatures.marketingLaunchDate); 
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
					   enabled: false,    initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.id.toString()),   
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
				  // Column Details:  Srl No : [2] [ Name [Feature] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Feature], Name [feature], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.feature),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Feature', 
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
					onSaved: (value) => setState(() => featureVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [3] [ Name [Status] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Status], Name [status], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.status),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Status', 
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
					onSaved: (value) => setState(() => statusVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [4] [ Name [Productowner] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Product Owner], Name [productOwner], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.productOwner),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Product Owner', 
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
					onSaved: (value) => setState(() => productOwnerVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [5] [ Name [LaunchOKRs] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 80, Display Size : 20 
				  // Flutter Details: Field Label [Launch Okrs], Name [launchOkrs], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.launchOkrs),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Launch Okrs', 
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
					onSaved: (value) => setState(() => launchOkrsVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [6] [ Name [Featurecompletedate] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Feature Complete Date], Name [featureCompleteDate], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController6,  
					    //IS-PICKER  initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.featureCompleteDate),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Feature Complete Date', 
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
					onSaved: (value) => setState(() => featureCompleteDateVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [featureCompleteDate], [Featurecompletedate] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate6(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate6.day}/${selectedDate6.month}/${selectedDate6.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [7] [ Name [Featurelaunchdate] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Feature Launch Date], Name [featureLaunchDate], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController7,  
					    //IS-PICKER  initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.featureLaunchDate),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Feature Launch Date', 
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
					onSaved: (value) => setState(() => featureLaunchDateVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [featureLaunchDate], [Featurelaunchdate] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate7(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate7.day}/${selectedDate7.month}/${selectedDate7.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [8] [ Name [Marketinglaunchdate] : EM Type [DATE], Java Type [Calendar]  
				  //                  EM size: maxlength: 10, Display Size : 10 
				  // Flutter Details: Field Label [Marketing Launch Date], Name [marketingLaunchDate], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
				controller: _textEditingController8,  
					    //IS-PICKER  initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.marketingLaunchDate),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(10), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Marketing Launch Date', 
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
					onSaved: (value) => setState(() => marketingLaunchDateVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				    //Date Picker For [marketingLaunchDate], [Marketinglaunchdate] 
				    IconButton(	
				        onPressed: () {	
				          _selectDate8(context);	
				        },	
				        icon: Icon(Icons.calendar_today, color: Colors.grey,)	
					 ),	
				    Align(	
				      child: SizedBox(	
				        width: 200,	
				        //height: 50,	
				        child: 	
				       Text("${selectedDate8.day}/${selectedDate8.month}/${selectedDate8.year}"),	
				      ),	
				    ),	
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [9] [ Name [Complexity] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Complexity], Name [complexity], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.complexity),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Complexity', 
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
					onSaved: (value) => setState(() => complexityVar = value.toString()), 
				  ), //textformfield 
				), //flexible 
				]), //Widget[] //Row 
                  const SizedBox(height: 10), 
				  // ---------------------------------------------------------------------------------------  
				  // Column Details:  Srl No : [10] [ Name [Value] : EM Type [CHAR], Java Type [String]  
				  //                  EM size: maxlength: 40, Display Size : 20 
				  // Flutter Details: Field Label [Value], Name [value], Type [String]  
				  // ---------------------------------------------------------------------------------------  
				Row( 
				  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
				  children: <Widget>[ 
				Flexible( 
					  child:  
				  TextFormField( 
					      initialValue: getEmStrOpt(foundSoftwareDevelopmentFeatures.value),   
					  /* 
					  */ 
					  /* 
					  inputFormatters: [ 
						//FilteringTextInputFormatter.digitsOnly,  //For numbers 
						//LengthLimitingTextInputFormatter(20), //for max char limit 
					  ],	 
					  */ 
					decoration: const InputDecoration( 
					  labelText: 'Value', 
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
					onSaved: (value) => setState(() => valueVar = value.toString()), 
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
 
                          SoftwareDevelopmentFeatures newSoftwareDevelopmentFeatures = SoftwareDevelopmentFeatures( 
					   id: getEmIntStr(idVar) , 
					   feature: featureVar , 
					   status: statusVar , 
					   productOwner: productOwnerVar , 
					   launchOkrs: launchOkrsVar , 
					   featureCompleteDate: featureCompleteDateVar , 
					   featureLaunchDate: featureLaunchDateVar , 
					   marketingLaunchDate: marketingLaunchDateVar , 
					   complexity: complexityVar , 
					   value: valueVar , 
							  ); 
 
                          SoftwareDevelopmentFeaturesService.SoftwareDevelopmentFeaturesEdit( 
                                  newSoftwareDevelopmentFeatures.id, 
                                  newSoftwareDevelopmentFeatures) 
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
 
 
