<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.error{
	color:red		
}
</style>
<!-- 表单验证 -->
<script type="text/javascript">

//自定义校验函数
$.validator.addMethod(
		
	"isExist",
		//校验函数
	function(value,element,params){
		//value:输入的内容
		//elment:被校验的元素对象
		//params:规则的参数值
		//目的：对输入的username进行Ajax校验
		var flag = true;
		$.ajax({
			"async":false,
			//传入服务器的参数
			"data":{"username":value},
			"url":"${pageContext.request.contextPath}/checkUserName.action",
			//回掉数据类型
			"dataType":"json",
			"success":function(data){
				var isExist = data.isExist;
				flag = isExist;
			}
		});
		return flag;
	}
		
);

	$(function(){
		$("#myform").validate({
			rules:{
				"user_name":{
					"required":true,
					"isExist":true
				},
				"user_password":{
					"required":true,
					"rangelength":[6,20]
				},
				"repassword":{
					"required":true,
					"rangelength":[6,20],
					"equalTo":"#password"
				},
				"email":{
					"required":true,
					"email":true
				}
				
			},
			messages:{
				"user_name":{
					"required":"用户名不能为空",
					"isExist":"该用户名已存在"
				},
				"user_password":{
					"required":"密码不能为空",
					"rangelength":"密码长度为6-20位"
				},
				"repassword":{
					"required":"密码不能为空",
					"rangelength":"密码长度为6-20位",
					"equalTo":"两次密码不一致"
				},
				"email":{
					"required":"邮箱不能为空",
					"email":"邮箱格式不正确"
				}
				
			}	
		});
		
	});

</script>

</head>
<body>
<p>zhuce</p>
</body>
</html>