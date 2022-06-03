import 'package:flutter/material.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_data_table.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_form.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_dropdown.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_search.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_edit.dart'; 
import 'package:em_app/pages/communicationsessionsview/communicationsessionsview_graph.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_data_table.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_form.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_dropdown.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_search.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_edit.dart'; 
import 'package:em_app/pages/contentproductionpipeline/contentproductionpipeline_graph.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_data_table.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_form.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_dropdown.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_search.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_edit.dart'; 
import 'package:em_app/pages/creativetalentrole/creativetalentrole_graph.dart'; 
import 'package:em_app/pages/employee/employee_data_table.dart'; 
import 'package:em_app/pages/employee/employee_form.dart'; 
import 'package:em_app/pages/employee/employee_dropdown.dart'; 
import 'package:em_app/pages/employee/employee_search.dart'; 
import 'package:em_app/pages/employee/employee_edit.dart'; 
import 'package:em_app/pages/employee/employee_graph.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_data_table.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_form.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_dropdown.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_search.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_edit.dart'; 
import 'package:em_app/pages/erptblallfldtypes/erptblallfldtypes_graph.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_data_table.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_form.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_dropdown.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_search.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_edit.dart'; 
import 'package:em_app/pages/erptblkeydate/erptblkeydate_graph.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_data_table.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_form.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_dropdown.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_search.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_edit.dart'; 
import 'package:em_app/pages/erpinventory/erpinventory_graph.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_data_table.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_form.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_dropdown.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_search.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_edit.dart'; 
import 'package:em_app/pages/erpproduct/erpproduct_graph.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_data_table.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_form.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_dropdown.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_search.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_edit.dart'; 
import 'package:em_app/pages/eventinvitationview/eventinvitationview_graph.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_data_table.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_form.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_dropdown.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_search.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_edit.dart'; 
import 'package:em_app/pages/featuredeventschedule/featuredeventschedule_graph.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_data_table.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_form.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_dropdown.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_search.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_edit.dart'; 
import 'package:em_app/pages/hobbiesartview/hobbiesartview_graph.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_data_table.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_form.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_dropdown.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_search.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_edit.dart'; 
import 'package:em_app/pages/legalintakeview/legalintakeview_graph.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_data_table.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_form.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_dropdown.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_search.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_edit.dart'; 
import 'package:em_app/pages/localbusinessclient/localbusinessclient_graph.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_data_table.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_form.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_dropdown.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_search.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_edit.dart'; 
import 'package:em_app/pages/nonprofitdonations/nonprofitdonations_graph.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_data_table.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_form.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_dropdown.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_search.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_edit.dart'; 
import 'package:em_app/pages/personalallcourses/personalallcourses_graph.dart'; 
import 'package:em_app/pages/productdesign/productdesign_data_table.dart'; 
import 'package:em_app/pages/productdesign/productdesign_form.dart'; 
import 'package:em_app/pages/productdesign/productdesign_dropdown.dart'; 
import 'package:em_app/pages/productdesign/productdesign_search.dart'; 
import 'package:em_app/pages/productdesign/productdesign_edit.dart'; 
import 'package:em_app/pages/productdesign/productdesign_graph.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_data_table.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_form.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_dropdown.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_search.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_edit.dart'; 
import 'package:em_app/pages/projectmanagementtask/projectmanagementtask_graph.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_data_table.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_form.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_dropdown.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_search.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_edit.dart'; 
import 'package:em_app/pages/recruitingallemployees/recruitingallemployees_graph.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_data_table.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_form.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_dropdown.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_search.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_edit.dart'; 
import 'package:em_app/pages/salescustomerresponse/salescustomerresponse_graph.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_data_table.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_form.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_dropdown.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_search.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_edit.dart'; 
import 'package:em_app/pages/softwaredevelopmentfeatures/softwaredevelopmentfeatures_graph.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_data_table.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_form.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_dropdown.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_search.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_edit.dart'; 
import 'package:em_app/pages/startupcustomersview/startupcustomersview_graph.dart'; 
import 'package:em_app/pages/student/student_data_table.dart'; 
import 'package:em_app/pages/student/student_form.dart'; 
import 'package:em_app/pages/student/student_dropdown.dart'; 
import 'package:em_app/pages/student/student_search.dart'; 
import 'package:em_app/pages/student/student_edit.dart'; 
import 'package:em_app/pages/student/student_graph.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_data_table.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_form.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_dropdown.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_search.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_edit.dart'; 
import 'package:em_app/pages/erpinventorysum/erpinventorysum_graph.dart'; 
 
class NavBar extends StatelessWidget { 
  const NavBar({Key? key}) : super(key: key); 
 
  @override 
  Widget build(BuildContext context) { 
    return Drawer( 
      child: ListView( 
        // Remove padding 
        padding: EdgeInsets.zero, 
        children: [ 
          const UserAccountsDrawerHeader( 
            accountName: Text('Your App Name'), 
            accountEmail: Text('email@yourdomain.com'), 
            currentAccountPicture: CircleAvatar( 
              child: ClipOval(child: Icon(Icons.business) 
                //Image.network('', fit: BoxFit.cover, width: 90, height: 90, ), 
                  ), 
            ), 
            decoration: BoxDecoration( 
              color: Colors.blue, 
              //image: DecorationImage(fit: BoxFit.fill, image: NetworkImage('')), 
            ), 
          ), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('CommunicationSessionsView Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('CommunicationSessionsView List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('CommunicationSessionsView List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('CommunicationSessionsView Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('CommunicationSessionsView DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('CommunicationSessionsView Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('CommunicationSessionsView Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('CommunicationSessionsView Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CommunicationSessionsViewEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ContentProductionPipeline Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ContentProductionPipeline List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ContentProductionPipeline List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ContentProductionPipeline Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ContentProductionPipeline DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ContentProductionPipeline Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ContentProductionPipeline Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ContentProductionPipeline Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ContentProductionPipelineEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('CreativeTalentRole Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('CreativeTalentRole List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('CreativeTalentRole List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('CreativeTalentRole Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('CreativeTalentRole DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('CreativeTalentRole Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('CreativeTalentRole Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('CreativeTalentRole Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const CreativeTalentRoleEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('Employee Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('Employee List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('Employee List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('Employee Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('Employee DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeEditDd( 
					nameSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('Employee Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('Employee Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('Employee Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EmployeeEdit( 
					nameSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ErpTblallfldtypes Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ErpTblallfldtypes List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ErpTblallfldtypes List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ErpTblallfldtypes Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ErpTblallfldtypes DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesEditDd( 
					personIdSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ErpTblallfldtypes Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ErpTblallfldtypes Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ErpTblallfldtypes Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblallfldtypesEdit( 
					personIdSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ErpTblkeydate Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ErpTblkeydate List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ErpTblkeydate List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ErpTblkeydate Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ErpTblkeydate DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateEditDd( 
					dateofinquirySelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ErpTblkeydate Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ErpTblkeydate Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ErpTblkeydate Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpTblkeydateEdit( 
					dateofinquirySelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ErpInventory Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ErpInventory List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ErpInventory List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ErpInventory Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ErpInventory DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryEditDd( 
					inventoryIdSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ErpInventory Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ErpInventory Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ErpInventory Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventoryEdit( 
					inventoryIdSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ErpProduct Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ErpProduct List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ErpProduct List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ErpProduct Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ErpProduct DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductEditDd( 
					productIdSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ErpProduct Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ErpProduct Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ErpProduct Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpProductEdit( 
					productIdSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('EventInvitationView Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('EventInvitationView List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('EventInvitationView List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('EventInvitationView Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('EventInvitationView DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('EventInvitationView Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('EventInvitationView Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('EventInvitationView Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const EventInvitationViewEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('FeaturedEventSchedule Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('FeaturedEventSchedule List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('FeaturedEventSchedule List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('FeaturedEventSchedule Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('FeaturedEventSchedule DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('FeaturedEventSchedule Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('FeaturedEventSchedule Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('FeaturedEventSchedule Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const FeaturedEventScheduleEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('HobbiesArtView Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('HobbiesArtView List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('HobbiesArtView List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('HobbiesArtView Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('HobbiesArtView DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('HobbiesArtView Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('HobbiesArtView Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('HobbiesArtView Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const HobbiesArtViewEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('LegalIntakeView Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('LegalIntakeView List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('LegalIntakeView List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('LegalIntakeView Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('LegalIntakeView DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('LegalIntakeView Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('LegalIntakeView Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('LegalIntakeView Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LegalIntakeViewEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('LocalBusinessClient Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('LocalBusinessClient List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('LocalBusinessClient List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('LocalBusinessClient Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('LocalBusinessClient DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('LocalBusinessClient Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('LocalBusinessClient Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('LocalBusinessClient Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const LocalBusinessClientEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('NonProfitDonations Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('NonProfitDonations List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('NonProfitDonations List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('NonProfitDonations Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('NonProfitDonations DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('NonProfitDonations Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('NonProfitDonations Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('NonProfitDonations Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const NonProfitDonationsEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('PersonalAllCourses Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('PersonalAllCourses List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('PersonalAllCourses List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('PersonalAllCourses Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('PersonalAllCourses DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('PersonalAllCourses Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('PersonalAllCourses Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('PersonalAllCourses Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const PersonalAllCoursesEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ProductDesign Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ProductDesign List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ProductDesign List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ProductDesign Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ProductDesign DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ProductDesign Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ProductDesign Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ProductDesign Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProductDesignEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ProjectManagementTask Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ProjectManagementTask List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ProjectManagementTask List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ProjectManagementTask Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ProjectManagementTask DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ProjectManagementTask Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ProjectManagementTask Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ProjectManagementTask Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ProjectManagementTaskEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('RecruitingAllEmployees Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('RecruitingAllEmployees List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('RecruitingAllEmployees List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('RecruitingAllEmployees Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('RecruitingAllEmployees DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('RecruitingAllEmployees Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('RecruitingAllEmployees Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('RecruitingAllEmployees Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const RecruitingAllEmployeesEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('SalesCustomerResponse Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('SalesCustomerResponse List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('SalesCustomerResponse List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('SalesCustomerResponse Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('SalesCustomerResponse DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('SalesCustomerResponse Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('SalesCustomerResponse Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('SalesCustomerResponse Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SalesCustomerResponseEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('SoftwareDevelopmentFeatures Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('SoftwareDevelopmentFeatures List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('SoftwareDevelopmentFeatures List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('SoftwareDevelopmentFeatures Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('SoftwareDevelopmentFeatures DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('SoftwareDevelopmentFeatures Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('SoftwareDevelopmentFeatures Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('SoftwareDevelopmentFeatures Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const SoftwareDevelopmentFeaturesEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('StartupCustomersView Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('StartupCustomersView List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('StartupCustomersView List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('StartupCustomersView Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('StartupCustomersView DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewEditDd( 
					idSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('StartupCustomersView Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('StartupCustomersView Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('StartupCustomersView Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StartupCustomersViewEdit( 
					idSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('Student Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('Student List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('Student List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('Student Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('Student DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentEditDd( 
					nameSelected: "Select A Key Value", //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('Student Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('Student Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('Student Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const StudentEdit( 
					nameSelected: "", //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
		  ListTile( 
			leading: const Icon(Icons.table_view), 
			title: const Text('ErpInventorySum Data Table'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumDataTable(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.credit_card), 
			title: const Text('ErpInventorySum List Card'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumDataTable(viewType: "ListCard"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.view_column), 
			title: const Text('ErpInventorySum List View'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumDataTable(viewType: "ListView"), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.add_circle_rounded), 
			title: const Text('ErpInventorySum Input Form'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumForm(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.list_alt), 
			title: const Text('ErpInventorySum DropDown'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumEditDd( 
					yearSelected: 0, //Or Pass existing Value, to be shown selected 
					), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.search_sharp), 
			title: const Text('ErpInventorySum Search'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumSearch(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.auto_graph), 
			title: const Text('ErpInventorySum Graph'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumGraph(), 
			)), 
		  ), 
		  ListTile( 
			leading: const Icon(Icons.edit), 
			title: const Text('ErpInventorySum Edit'), 
			onTap: () => Navigator.of(context).push(MaterialPageRoute( 
			  builder: (context) => const ErpInventorySumEdit( 
					yearSelected: 0, //Pass Value of Record to be shown in edit mode 
					), 
			)), 
		  ), 
		  const Divider(), 
          const Divider(), 
          ListTile( 
            leading: const Icon(Icons.settings), 
            title: const Text('Settings'), 
            onTap: () => null, 
          ), 
          ListTile( 
            title: const Text('Exit'), 
            leading: const Icon(Icons.exit_to_app), 
            onTap: () => null, 
          ), 
        ], 
      ), 
    ); 
  } 
} 
 
