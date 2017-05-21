var table;
$(document)
		.ready(
				function() {
					table = $('#dataSource_tbl')
							.DataTable(
									{
										"ordering" : false,
										"searching" : false,
										"processing" : true,
										"serverSide" : true,
										"pageLength" : 20,
										"aLengthMenu" : [ 20, 30, 50, 100 ],
										"ajax" : "/hummingbirdSystem/dataSourceMgr/showDataSourceList",
										"columns" : [ {
											"data" : "id"
										}, {
											"data" : "name"
										}, {
											"data" : "connectType.name"
										}, {
											"data" : "connectMode.name"
										}, {
											"data" : "createTime"
										}, {
											"data" : null
										}, ],
										"columnDefs" : [ {
											"targets" : 5,
											"data" : null,
											"render" : function(data, type, row) {
												var html = '<a title="修改" onclick="editDataSourceDetail(\''
														+ row.id
														+ '\',\''
														+ row.name
														+ '\',\''
														+ row.connectType.name
														+ '\',\''
														+ row.connectMode.name
														+ '\')" href="javascript:void(0);" class="btn btn-sm btn-info">修改</a>'
												html += ' <a title="删除" onclick="deleteDataSource(\''
														+ row.id
														+ '\')" href="javascript:void(0);" class="btn btn-sm btn-danger">删除</a>'
												return html;
											}
										} ],
										"language" : {
											"sProcessing" : "处理中...",
											"sLengthMenu" : "显示 _MENU_ 项结果",
											"sZeroRecords" : "没有匹配结果",
											"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
											"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
											"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
											"sInfoPostFix" : "",
											"sSearch" : "搜索:",
											"sUrl" : "",
											"sEmptyTable" : "表中数据为空",
											"sLoadingRecords" : "载入中...",
											"sInfoThousands" : ",",
											"oPaginate" : {
												"sFirst" : "首页",
												"sPrevious" : "上页",
												"sNext" : "下页",
												"sLast" : "末页"
											},
											"oAria" : {
												"sSortAscending" : ": 以升序排列此列",
												"sSortDescending" : ": 以降序排列此列"
											}
										},
									});
				});

function editDataSourceDetail() {
	$("#dataSource_modal_title").text("修改数据源");
	$("#dataSource_modal").modal("show");
}

function showModal() {
	$("#dataSource_modal_title").text("新增数据源");
	$("#dataSource_modal").modal("show");
}