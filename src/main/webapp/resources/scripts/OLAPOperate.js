$(document).ready(function() {
	// 根据jQuery选择器找到需要加载ystep的容器
	// loadStep 方法可以初始化ystep
	$(".OLAP_ystep").loadStep({
		// ystep的外观大小
		// 可选值：small,large
		size : "large",
		// ystep配色方案
		// 可选值：green,blue
		color : "green",
		// ystep中包含的步骤
		steps : [ {
			// 步骤名称
			title : "开始"
		}, {
			title : "创建"
		}, {
			title : "模型"
		}, {
			title : "完成"
		} ]
	});

	$(".OLAP_ystep").setStep(1);

	$("#startOLAP").on('click', function() {
		startOLAP();
		$(".OLAP_ystep").setStep(2);
	});

	$("#buildCube").on('click', function() {
		buildCube();
		$(".OLAP_ystep").setStep(3);
	});

	$("#makeModel").on('click', function() {
		makeModel();
		$(".OLAP_ystep").setStep(4);
	});
})

function startOLAP() {
	$.ajax({
		type : 'GET',
		url : "/hummingbirdSystem/OLAPMgr/MakeModulex",
		success : function(data) {
			alert("操作完成！");
		},
		error : function(data) {
		}
	});
}

function makeModel() {
	$.ajax({
		type : 'GET',
		url : "/hummingbirdSystem/OLAPMgr/makeModel",
		success : function(data) {
			alert("操作完成！");
		},
		error : function(data) {
		}
	});
}