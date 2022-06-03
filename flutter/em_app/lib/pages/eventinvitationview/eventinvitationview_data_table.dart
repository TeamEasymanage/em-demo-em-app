import 'package:flutter/material.dart'; 
import 'package:adaptive_scrollbar/adaptive_scrollbar.dart'; 
 
import 'package:em_app/em_global.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_model.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_service.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_lib.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_edit.dart'; 
 
class EventInvitationViewDataTable extends StatefulWidget { 
  final String? viewType; 
  const EventInvitationViewDataTable({Key? key, this.viewType}) : super(key: key); 
 
  @override 
  _EventInvitationViewDataTableState createState() => _EventInvitationViewDataTableState(); 
} 
 
class _EventInvitationViewDataTableState extends State<EventInvitationViewDataTable> { 
  String dispType = "DataTable"; 
  String emTitle =  "EventInvitationView Data Table"; 
  int noOfCardsPerRow = 2; 
  int noOfFieldsForCard = 2; 
 
  String errorMsg = timeErrStr; 
 
  List<EventInvitationView> eventInvitationViewList = []; 
 
  bool _loading = true; 
  int? sortColumnIndex; 
  bool isAscending = false; 
  bool showFLButtons = true; 
 
  final double formWidth =   400 + (200 * 7) ; //400 + (200 * NoOfColumns)
 
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
        emTitle = "EventInvitationView List View"; 
        } 
        break; 
        case "ListCard": { 
        dispType = "ListCard"; 
        emTitle = "EventInvitationView List Card"; 
        } 
        break; 
        default: 
      } 
    } 
    //print("View Type : " + dispType);  
	 //print("formWidth : " + formWidth.toString()); 
    _loading = true; 
    print("Calling Service : viewAllEventInvitationView ... "); 
    EventInvitationViewService.EventInvitationViewViewAll().then((getList) { 
      if (getList is String) { 
        setState(() { 
          errorMsg = getList; 
        }); 
      } else { 
      setState(() { 
        eventInvitationViewList = getList; 
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
                      source: EventInvitationViewDataSource(eventInvitationViewList), 
                      columns: <DataColumn>[ 
                DataColumn( 
                    label: const Text('Id'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Guest'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Address'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Phone Number'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Plus One'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Guest Count'), onSort: doColumnSort), 
                DataColumn( 
                    label: const Text('Related Event'), onSort: doColumnSort), 
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
    Iterable EventInvitationViewCardList = 
        eventInvitationViewList.map((e) =>  
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
        children: List.from(EventInvitationViewCardList) 
    ); 
  } 
 
  Widget getColumnsForListCard1(EventInvitationView e) { 
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
        DataColumn(label: Text(eventInvitationViewList[0].toListLabVal()[0][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
        DataColumn(label: Text(eventInvitationViewList[0].toListLabVal()[1][0].toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))), 
      ], 
      rows: eventInvitationViewList 
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
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.id, item2.id)); 
	} else if (columnIndex == 1) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.guest, item2.guest)); 
	} else if (columnIndex == 2) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.address, item2.address)); 
	} else if (columnIndex == 3) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.phoneNumber, item2.phoneNumber)); 
	} else if (columnIndex == 4) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.plusOne, item2.plusOne)); 
	} else if (columnIndex == 5) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.guestCount, item2.guestCount)); 
	} else if (columnIndex == 6) { 
	  eventInvitationViewList.sort((item1, item2) => 
		  compareColumn(ascending, item1.relatedEvent, item2.relatedEvent)); 
    } 
 
    setState(() { 
      sortColumnIndex = columnIndex; 
      isAscending = ascending; 
    }); 
  } 
 
  int compareColumn(bool ascending, dynamic value1, dynamic value2) => 
      ascending ? value1.compareTo(value2) : value2.compareTo(value1); 
} 
 
class EventInvitationViewDataSource extends DataTableSource { 
  // Generate some made-up data 
  @required 
  late List<EventInvitationView> _data; 
 
  EventInvitationViewDataSource(List<EventInvitationView> eventInvitationViewList) { 
    _data = eventInvitationViewList; 
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
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].id)))), 
	DataCell(Text(getEmStrOpt(_data[index].guest))), 
	DataCell(Text(getEmStrOpt(_data[index].address))), 
	DataCell(Text(getEmStrOpt(_data[index].phoneNumber))), 
	DataCell(Text(getEmStrOpt(_data[index].plusOne))), 
	DataCell(Text(getEmStrOpt(getEmFmtNumOpt(_data[index].guestCount)))), 
	DataCell(Text(getEmStrOpt(_data[index].relatedEvent))), 
      DataCell(Row( 	
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 	
        children: [ 	
          Builder(builder: (context) { 	
            return IconButton( 	
                onPressed: () { 	
                  Navigator.of(context).push(MaterialPageRoute( 	
                    builder: (context) => EventInvitationViewEdit( 	
                      idSelected: _data[index].id, 	
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
                        content: _EventInvitationViewInfo(foundEventInvitationView: _data[index]), 	
                        actions: <Widget>[ 	
                          TextButton( 	
                            onPressed: () => Navigator.pop(context, 'Cancel'), 	
                            child: const Text('Cancel'), 	
                          ), 	
                          TextButton( 	
                            onPressed: () { 	
                              Navigator.pop(context, 'Delete'); 	
                              EventInvitationViewService.EventInvitationViewDelete( 	
                                      _data[index].id) 	
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
	 	
	class _EventInvitationViewInfo extends StatelessWidget { 	
	  final EventInvitationView foundEventInvitationView; 	
	  const _EventInvitationViewInfo({Key? key, required this.foundEventInvitationView}) 	
	      : super(key: key); 	
	 	
	  @override 	
	  Widget build(BuildContext context) { 	
			return EventInvitationView_dispForm(context, foundEventInvitationView); 	
	  } 	
	} 	
 
