var table;
$(document)
		.ready(
				function() {
					table = $('#MultiDimensionAnalysis_tbl')
							.DataTable(
									{
										"ordering" : false,
										"searching" : false,
										"processing" : true,
										"serverSide" : true,
										"pageLength" : 20,
										"aLengthMenu" : [ 20, 30, 50, 100 ],
										"ajax" : "/hummingbirdSystem/dataSourceMgr/showDimensionList",
										"columns" : [ {
											"data" : "id"
										}, {
											"data" : "projectName"
										}, {
											"data" : "dataModel.name"
										}, {
											"data" : "dimensionColumnNames"
										}, {
											"data" : "quotaColumnNames"
										}, {
											"data" : null
										}, ],
										"columnDefs" : [ {
											"targets" : 5,
											"data" : null,
											"render" : function(data, type, row) {
												var html = ' <a title="修改" onclick="editDimensionDetail(\''
														+ row.id
														+ '\',\''
														+ row.dataModel.name
														+ '\',\''
														+ row.dimensionColumnNames
														+ '\',\''
														+ row.quotaColumnNames
														+ '\')" href="javascript:void(0);" class="btn btn-sm btn-info">修改</a>'
												html += ' <a title="OLAP" onclick="showOLAPModal(\''
														+ row.id
														+ '\')" href="javascript:void(0);" class="btn btn-sm btn-primary">OLAP</a>'
												html += ' <a title="删除" onclick="deleteDimension(\''
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

					$("#showTableRelation_btn").click(function() {
						$("#factTableRelation_modal").modal('show');
					});
				});

function editDimensionDetail() {
	$("#dimension_modal_title").text("修改维度分析");
	$("#dimension_modal").modal("show");
}

function showModal() {
	$("#dimension_modal_title").text("新增维度分析");
	$("#dimension_modal").modal("show");
}

function showOLAPModal() {
	$("#OLAP_modal").modal("show");
}

function addFactTableRelation() {
	var trString = "<tr>" + "<td>"
			+ 1
			+ "</td>"
			+ "<td>"
			+ $("#factTable1").val()
			+ "</td>"
			+ "<td>"
			+ $("#factTable2").val()
			+ "</td>"
			+ "<td>"
			+ $("#connectType").val()
			+ "</td>"
			+ "<td>"
			+ $("#factTable1").val()
			+ "."
			+ $("#joinColumn_tbl1").val()
			+ "="
			+ $("#factTable2").val()
			+ "."
			+ $("#joinColumn_tbl2").val()
			+ "</td>"
			+ "<td>"
			+ "<button type='button' class='btn btn-default btn-sm' onclick='editStr(this);'><span class='glyphicon glyphicon-edit'></span></button>"
			+ "<button type='button' class='btn btn-default btn-sm' onclick='deleteStr(this);'><span class='glyphicon glyphicon-remove'></span></button>"
			+ "</td>" + "</tr>";
	$('#factTableRelation_tbl tbody').append(trString);
	$("#factTableRelation_modal").modal("hide");
}