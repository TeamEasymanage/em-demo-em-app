import 'package:flutter/material.dart'; 
import 'package:adaptive_scrollbar/adaptive_scrollbar.dart'; 
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_model.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_service.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_lib.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_edit.dart'; 
 
class ErpTblallfldtypesDataTable extends StatefulWidget { 
  final String? viewType; 
  const ErpTblallfldtypesDataTable({Key? key, this.viewType}) : super(key: key); 
 
  @override 
  _ErpTblallfldtypesDataTableState createState() => _ErpTblallfldtypesDataTableState(); 
} 
 
class _ErpTblallfldtypesDataTableState extends State<ErpTblallfldtypesDataTable> { 
  String dispType = "DataTable"; 
  String emTitle =  "ErpTblallfldtypes Data Table"; 
  int noOfCardsPerRow = 2; 
  int noOfFieldsForCard = 2; 
 
  String errorMsg = timeErrStr; 
 
  List<ErpTblallfldtypes> erpTblallfldtypesList = []; 
 
  bool _loading = true; 
  int? sortColumnIndex; 
  bool isAscending = false; 
  bool showFLButtons = true; 
 
  final double formWidth =   400 + (200 * 14) ; //400 + (200 * NoOfColumns)
 
  final ScrollController horizontalScroll = ScrollController(); 
  final ScrollController verticalScroll = ScrollController(); 
  final double scrollBarWidth = 20; 
 
  @override 
  void initState() { 
    super.initState(); 
    if (widget.viewType != null ) { 
 
      switch (widget.viewType) { 
        case "ListView": { 
        dispType = "ListView"; 
        emTitle = "ErpTblallfldtypes List View"; 
        } 
        break; 
        case "ListCard": { 
        dispType = "ListCard"; 
        emTitle = "ErpTblallfldtypes List Card"; 
        } 
        break; 
        default: 
      } 
    } 
    //print("View Type : " + dispType);  
	 //print("formWidth : " + formWidth.toString()); 
    _loading = true; 
    print("Calling Service : viewAllErpTblallfldtypes ... "); 
    ErpTblallfldtypesService.ErpTblallfldtypesViewAll().then((getList) { 
      if (getList is String) { 
        setState(() { 
          errorMsg = getList; 
        }); 
      } else { 
      setState(() { 
        erpTblallfldtypesList = getList; 
        _loading = false; 
      }); 
      }  
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
        backgroundColor: Colors.blue.shade200, 
        appBar: AppBar( 
          title: Text(_loading ? 'Loading...' : emTitle), 
          centerTitle: true, 
        ), 
        body: _loading 
            ? EmShowProgress( 
                msg: errorMsg, 
              ) 
            : getDispViewAsPerType() 
    );  
  } 
 
 
Widget getDispViewAsPerType() { 
 
              switch (dispType) { 
                case "ListView": { 
                return Center (child: getListView()); 
                } 
                case "ListCard": { 
                return Center (child: getListCard()); 
                } 
              } 
                return Center (child: getDataTableView()); 
 
} 
 
// --------------- DataTable View ------------------- 
Container getDataTableView() { 
 
          return Container(  
                    height: MediaQuery.of(context).size.height, 
					 width: formWidth, 
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10), 
                    //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
                    decoration: const BoxDecoration( 
                      //color: Colors.blue.shade200, 
                    ), 
                   //------------------------------------ Scrollbars 	
                    child: AdaptiveScrollbar( 	
                        controller: verticalScroll, 	
                        width: scrollBarWidth, 	
                        scrollToClickDelta: 75, 	
                        scrollToClickFirstDelay: 200, 	
                        scrollToClickOtherDelay: 50, 	
                        sliderDecoration: BoxDecoration( 	
                          color: Colors.grey.shade100, 	
                          borderRadius: 	
                              const BorderRadius.all(Radius.circular(5)), 	
                        ), 	
                        sliderActiveDecoration: BoxDecoration( 	
                          color: Colors.grey.shade300, 	
                          borderRadius: 	
                              const BorderRadius.all(Radius.circular(5)), 	
                        ), 	
                        underColor: Colors.transparent, 	
                        child: AdaptiveScrollbar( 	
                            underSpacing: EdgeInsets.only(bottom: scrollBarWidth), 	
                            controller: horizontalScroll, 	
                            width: scrollBarWidth, 	
                            position: ScrollbarPosition.bottom, 	
                            sliderDecoration: BoxDecoration( 	
                              color: Colors.grey.shade300, 	
                              borderRadius: 	
                                  const BorderRadius.all(Radius.circular(5)), 	
                            ), 	
                            sliderActiveDecoration: BoxDecoration( 	
                              color: Colors.grey.shade500, 	
                              borderRadius: 	
                                  const BorderRadius.all(Radius.circular(5)), 	
                            ), 	
                            underColor: Colors.transparent, 	
                            child: SingleChildScrollView( 	
                                controller: horizontalScroll, 	
                                scrollDirection: Axis.horizontal, 	
                                child: SingleChildScrollView( 	
                                    clipBehavior: Clip.none, 	
                                    controller: verticalScroll, 	
                                    scrollDirection: Axis.vertical, 	
                                    child: SizedBox( 	
                                      width: formWidth , 	
                   //------------------------------------ Scrollbars 	
                        child: PaginatedDataTable( 
                      //columnSpacing: 100, 
                      //horizontalMargin: 30, 
                      rowsPerPage: 5, 
                      showFirstLastButtons: showFLButtons, 
                      //showCheckboxColumn: false, 
                      sortAscending: isAscending, 
                      sortColumnIndex: sortColumnIndex, 
                      arrowHeadColor: Colors.black, 
                      source: ErpTblallfldtypesDataSource(erpTblallfldtypesList), 
                      columns: <DataColumn>[ 
                DataColumn( 
                    label: const Text('Person Id'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Name'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Phone'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Mobile Phone'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Pict'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Email'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Website'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Address'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Dateofinquiry'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Requestedqty'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Reqquoteamt'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Meetingpreftime'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Created'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Updated'), onSort: doColumnSort), 
                      const DataColumn( 
                        label: Text( 
                          'Edit/Delete', 
                          //style: Theme.of(context).textTheme.headline4, 
                        ), 
                      ), 
                      ], 
 
                    				), 
                                   )))))); 
  } 
 
// --------------- List Card View ------------------- 
  GridView getListCard() { 
    Iterable ErpTblallfldtypesCardList = 
        erpTblallfldtypesList.map((e) =>  
     SizedBox( 
      //height and width property have no effect 
 
      child: (Card( 
        child: Padding( 
          padding: const EdgeInsets.all(8.0), 
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [ 
              const Icon( 
                Icons.person, 
                  size: 60, 
                color: Colors.indigoAccent, 
              ), 
              getColumnsForListCard1(e), 
              /* 
              Text( 
                e.personId.toString(), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.name.toString(), 
                style: 
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.phone.toString(), 
              ), 
              const SizedBox( 
                height: 8, 
              ), 
              Text( 
                e.email.toString(), 
              ), 
              */ 
              OutlinedButton( 
            onPressed: () {}, 
            child:const Text("Add"), 
            style: ButtonStyle( 
                minimumSize: MaterialStateProperty.all(const Size(140, 38)), 
                //backgroundColor: MaterialStateProperty.all(const Color(0x33333333)), 
                ), 
            ), 
            ], 
          ), 
        ), 
      )), 
    ) 
    ); 
 
    return GridView.count( 
        primary: false, 
        padding: const EdgeInsets.all(10), 
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10, 
        crossAxisCount: noOfCardsPerRow, //2, 
        children: List.from(ErpTblallfldtypesCardList) 
    ); 
  } 
 
  Widget getColumnsForListCard1(ErpTblallfldtypes e) { 
    var noOfFields = e.toMapLabelVal().length; 
    //print (noOfFields); 
 
    var children = <Widget>[]; 
    for (var i = 0; i < noOfFields && i < noOfFieldsForCard ; i++) { 
    children.add( 
              Text( 
                //e.toListLabVal()[i].toString(), 
                //e.toListLabVal()[i][0].toString() + ":" + 
                e.toListLabVal()[i][1].toString(), 
              ) 
    ); 
    children.add( 
              const SizedBox( 
                height: 8, 
              ) 
    ); 
    } 
    return Column( 
    children: children, 
    ); 
 
    //return  Column (children : const [Text("XYZ")]); 
  } 
 
// --------------- List View ------------------- 
  SingleChildScrollView getListView() { 
    return SingleChildScrollView( 
      child: Padding( 
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10), 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [ 
            Container( 
              height: MediaQuery.of(context).size.height, 
              width: MediaQuery.of(context).size.width * 0.90, 
              padding: const EdgeInsets.only(top: 8.0), 
              decoration: const BoxDecoration(boxShadow: [ 
                BoxShadow( 
                  color: Colors.white, 
                ), 
              ], borderRadius: BorderRadius.all(Radius.circular(10.0))), 
              child: ListView(children: [ 
                _buildListView(), 
              ]), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
 
  DataTable _buildListView() { 
    return DataTable( 
      columns: <DataColumn>[ 
        DataColumn(label: Text(erpTblallfldtypesList[0].toListLabVal()[0][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
        DataColumn(label: Text(erpTblallfldtypesList[0].toListLabVal()[1][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
      ], 
      rows: erpTblallfldtypesList 
          .map((e) => DataRow( 
                cells: [ 
                  DataCell(Text(getEmStrOpt(e.toListLabVal()[0][1].toString()))), 
                  DataCell(Text(getEmStrOpt(e.toListLabVal()[1][1].toString()))), 
                ], 
              )) 
          .toList(), 
    ); 
  } 
 
// --------------- DataTable Functions ------------------- 
  void doColumnSort(int columnIndex, bool ascending) { 
	if (columnIndex == 0) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.personId, item2.personId)); 
	} else if (columnIndex == 1) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.name, item2.name)); 
	} else if (columnIndex == 2) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.phone, item2.phone)); 
	} else if (columnIndex == 3) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.mobilePhone, item2.mobilePhone)); 
	} else if (columnIndex == 4) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.pict, item2.pict)); 
	} else if (columnIndex == 5) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.email, item2.email)); 
	} else if (columnIndex == 6) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.website, item2.website)); 
	} else if (columnIndex == 7) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.address, item2.address)); 
	} else if (columnIndex == 8) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.dateofinquiry, item2.dateofinquiry)); 
	} else if (columnIndex == 9) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.requestedqty, item2.requestedqty)); 
	} else if (columnIndex == 10) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.reqquoteamt, item2.reqquoteamt)); 
	} else if (columnIndex == 11) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.meetingpreftime, item2.meetingpreftime)); 
	} else if (columnIndex == 12) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.created, item2.created)); 
	} else if (columnIndex == 13) { 
	  erpTblallfldtypesList.sort((item1, item2) => 
		  compareColumn(ascending, item1.updated, item2.updated)); 
    } 
 
    setState(() { 
      sortColumnIndex = columnIndex; 
      isAscending = ascending; 
    }); 
  } 
 
  int compareColumn(bool ascending, dynamic value1, dynamic value2) => 
      ascending ? value1.compareTo(value2) : value2.compareTo(value1); 
} 
 
class ErpTblallfldtypesDataSource extends DataTableSource { 
  // Generate some made-up data 
  @required 
  late List<ErpTblallfldtypes> _data; 
 
  ErpTblallfldtypesDataSource(List<ErpTblallfldtypes> erpTblallfldtypesList) { 
    _data = erpTblallfldtypesList; 
  } 
 
  @override 
  bool get isRowCountApproximate => false; 
  @override 
  int get rowCount => _data.length; 
  @override 
  int get selectedRowCount => 0; 
  @override 
  DataRow getRow(int index) { 
    return DataRow(cells: [ 
	DataCell(Text(getEmStrOpt(_data[index].personId))), 
	DataCell(Text(getEmStrOpt(_data[index].name))), 
	DataCell(Text(getEmStrOpt(_data[index].phone))), 
	DataCell(Text(getEmStrOpt(_data[index].mobilePhone))), 
	const DataCell(Icon(Icons.image, color: Colors.blueGrey,)), //const DataCell(Text("")), //DataCell(Text(getEmStrOpt(_data[index].pict))), 
	DataCell(Text(getEmStrOpt(_data[index].email))), 
	DataCell(Text(getEmStrOpt(_data[index].website))), 
	DataCell(Text(getEmStrOpt(_data[index].address))), 
	DataCell(Text(getEmStrOpt(_data[index].dateofinquiry))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].requestedqty)))), 
	DataCell(Text(getEmStrOpt(_data[index].reqquoteamt.toString()))), //DataCell(Text(getEmStrOpt(getEmFmtCurOpt(_data[index].reqquoteamt)))), 
	DataCell(Text(getEmStrOpt(_data[index].meetingpreftime))), 
	DataCell(Text(getEmStrOpt(_data[index].created))), 
	DataCell(Text(getEmStrOpt(_data[index].updated))), 
      DataCell(Row( 	
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 	
        children: [ 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () { 	
                  Navigator.of(context).push(MaterialPageRoute( 	
                    builder: (context) => ErpTblallfldtypesEdit( 	
                      personIdSelected: _data[index].personId, 	
                    ), 	
                  )); 	
                }, 	
                icon: const Icon( 	
                  Icons.edit, 	
                  color: Colors.blueGrey, 	
                )); 	
          }), 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () => showDialog<String>( 	
                      context: context, 	
                      builder: (BuildContext context) => AlertDialog( 	
                        title: Text('Do you want to delete this record ?', 	
                            style: TextStyle( 	
                                color: Colors.red.shade400, 	
                                //fontSize: 22, 	
                                //fontWeight: FontWeight.w400 	
                                )), 	
                        content: _ErpTblallfldtypesInfo(foundErpTblallfldtypes: _data[index]), 	
                        actions: <Widget>[ 	
                          TextButton( 	
                            onPressed: () => Navigator.pop(context, 'Cancel'), 	
                            child: const Text('Cancel'), 	
                          ), 	
                          TextButton( 	
                            onPressed: () { 	
                              Navigator.pop(context, 'Delete'); 	
                              ErpTblallfldtypesService.ErpTblallfldtypesDelete( 	
                                      _data[index].personId) 	
                                  .then((message) { 	
                                    message == "Record Deleted Successfully"	
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
                                    style: 	
                                        Theme.of(context).textTheme.headline5, 	
                                  ), 	
                                  backgroundColor: 	
                                      message == "Record Deleted Successfully" 	
                                          ? Colors.green 	
                                          : Colors.redAccent, 	
                                ); 	
                                ScaffoldMessenger.of(context) 	
                                    .showSnackBar(snackBar); 	
                              }); 	
                            }, 	
                            child: Text('Delete', 	
                                style: TextStyle(color: Colors.red.shade400)), 	
                          ), 	
                        ], 	
                      ), 	
                    ), 	
                icon: Icon( 	
                  Icons.delete, 	
                  color: Colors.red.shade400, 	
                )); 	
          }), 	
        ], 	
      )), 	
    ]); 
  } 
} 
// --------------- DataTable Functions -------------------	
	 		
// --------------- DataTable Delete Call Functions - View Record -------------------	
	 	
	class _ErpTblallfldtypesInfo extends StatelessWidget { 	
	  final ErpTblallfldtypes foundErpTblallfldtypes; 	
	  const _ErpTblallfldtypesInfo({Key? key, required this.foundErpTblallfldtypes}) 	
	      : super(key: key); 	
	 	
	  @override 	
	  Widget build(BuildContext context) { 	
			return ErpTblallfldtypes_dispForm(context, foundErpTblallfldtypes); 	
	  } 	
	} 	
 
