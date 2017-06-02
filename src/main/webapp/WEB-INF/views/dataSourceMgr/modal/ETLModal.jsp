<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>ETL弹出框</title>
<head>
</head>
<body>
	<!-- ETL弹出框(开始) -->
	<div class="modal fade" data-backdrop="static" id="ETL_modal"
		tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">ETL操作</h4>
				</div>
				<div class="modal-body">
					<div class="ETL_ystep" style="margin-left: 110px;"></div>
					<div class="form-group row">
						<button id="createTrans" class="btn btn-primary"
							style="margin-left: 200px;">创建Trans</button>
						<button id="startTrans" class="btn btn-primary"
							style="margin-left: 18px;">开始转换</button>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ETL弹出框(结束) -->
</body>
</html>
