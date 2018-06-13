<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>修改博客页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="./common/head.jspf"%>

<script type="text/javascript" charset="utf-8"
	src="${blog}/static/ueditor1_4_3_3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${blog}/static/ueditor1_4_3_3/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="${blog}/static/ueditor1_4_3_3/lang/zh-cn/zh-cn.js"></script>

</head>

<body style="margin: 10px; font-family: microsoft yahei">

	<div id="p" class="easyui-panel" title="修改编写博客" style="padding: 10px;">
		
		<table cellspacing="20px">
			<tr>
				<td width="80px">博客标题：</td>
				<td><input type="text" id="title" name="title" style="width:400px" /></td>
			</tr>
			<tr>
				<td>所属类别：</td>
				<td><select id="blogTypeId" class="easyui-combobox"
					name="blogType.id" style="width:154px" editable="false"
					panelHeight="auto">
						<c:forEach items="${categroy }" var="blogType">
							<option value="${blogType.cat_id }">${blogType.cat_name }</option>
						</c:forEach>
				</select></td>
				<td></td>
			</tr>
			<tr>
				<td valign="top">博客内容：</td>
				<td><script id="editor" name="content" type="text/plain"
						style="width:95%; height:200px;"></script></td>
			</tr>
			<tr>
				<td></td>
				<td><a href="javascript:submitData()" class="easyui-linkbutton"
					data-options="iconCls:'icon-submit'">确认修改</a></td>
			</tr>
		</table>
	</div>




	<!-- 实例化编辑器 -->
	<script type="text/javascript">
		var ue = UE.getEditor('editor');
		ue.addListener("ready",function () {
		    //百度UE自定义ajax请求
            UE.ajax.request("${pageContext.request.contextPath}/admin/modifyBlog",{
                method:"post",
                async:true,
                data:{id:"${param.id}"},
                onsuccess:function (result) {
                    //result = eval("(" + result.responseText + ")");
                    result = JSON.parse(result.responseText);
                    $("#title").val(result.title);
                    $("#blogTypeId").combobox("setValue", result.category.cat_name);
                    UE.getEditor('editor').setContent(result.content);
                }
            })
        })
	</script>

    <script type="text/javascript">
    function submitData() {
	    //获取博客标题
		var title = $("#title").val();
        //获取博客类别id
		var cat_id = $("#blogTypeId").combobox("getValue");

        //获取博客内容 带标记
		var content = UE.getEditor('editor').getContent();
      
		//校验
		if (title == null || title == '') {
			$.messager.alert("系统提示", "请输入标题！");
		} else if (content == null || content == '') {
			$.messager.alert("系统提示", "请编辑博客内容！");
		} else {
		    //ajax请求 请求后台写博客接口
		    
		    var json = JSON.stringify({"title":title,"cat_id" : cat_id,"content" : content,"art_id":"${param.id}"});
		    
		    $.ajax({		    	
		    	url:"${blog}/admin/updateArticle",
		    	type:"post",
		    	data:json,
		    	dataType:"string",
		    	contentType:"application/json;charset=utf-8"
		    	
		    });
		    alert("修改成功");
		}
	}
        function clearValues() {
            $("#title").val("");
            $("#blogTypeId").combobox("setValue", "");
            UE.getEditor("editor").setContent("");
            $("#keyWord").val("");
        }
    </script>
</body>
</html>
