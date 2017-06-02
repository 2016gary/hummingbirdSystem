$(document).ready(function() {
	// 根据jQuery选择器找到需要加载ystep的容器
	// loadStep 方法可以初始化ystep
	$(".ETL_ystep").loadStep({
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
			title : "转换"
		}, {
			title : "完成"
		} ]
	});

	$(".ETL_ystep").setStep(2);

	$("#createTrans").on('click', function() {
		createTrans();
		$(".ETL_ystep").setStep(3);
	});

	$("#startTrans").on('click', function() {
		startTrans();
		$(".ETL_ystep").setStep(4);
	});
})

function createTrans() {
	$.ajax({
		url : "/hummingbirdSystem/ETLMgr/createTrans",
		cache : false,
		async : false,
		success : function(data) {
			if (data) {
				alert("生成转换完成！");
			} else {
				alert("生成转换失败！");
			}
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("操作失败，请重试！");
		}
	});
}

function startTrans() {
	$.ajax({
		url : "/hummingbirdSystem/ETLMgr/startTrans",
		cache : false,
		async : false,
		success : function(data) {
			if (data) {
				alert("数据转换完成！");
			} else {
				alert("数据转换失败！");
			}
		},
		error : function(xhr, ajaxOptions, thrownError) {
			alert("操作失败，请重试！");
		}
	});
}