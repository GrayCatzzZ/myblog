<%--
  Created by IntelliJ IDEA.
  User: xp
  Date: 2017/4/20
  Time: 08:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论管理</title>
    <%@include file="./common/head.jspf"%>
    <script>

        /**
         * 删除评论信息
         */
        function deleteComment() {
            // 获取选中要删除的行信息
            var selectRows = $('#dg').datagrid('getSelections');
            // 至少选中一行
            if( selectRows.length == 0){
                $.messager.alert('系统信息','请选择要删除的数据')
            }else{
                var selectIds = [];
                for(var i = 0;i<selectRows.length;i++){
                    selectIds.push(selectRows[i].com_id);
                }
                var ids = selectIds.join(',');
                              
                $.messager.confirm('系统信息',"<font color=red>您确定要删除选中的"+selectRows.length+"条数据么？</font>",function(r){
                    if(r){
                        $.post("${pageContext.request.contextPath}/admin/commentDelete",{ids:ids},function (result) {
                            
                           
                            if(!result.success){
                                $.messager.alert('系统信息','删除评论成功');
                                $('#dg').datagrid('reload');
                            }else{
                                $.messager.alert('系统信息','删除评论失败');
                            }
                        },"json")
                    }
                })
            }
        }

        /**
         * 刷新
         */
        function reload() {
            $('#dg').datagrid('reload')
        }
    </script>
</head>
<body style="margin: 1px; font-family: microsoft yahei">
    <table id="dg" title="评论信息管理" class="easyui-datagrid" fitColumns="true" pagination="true"
           url="${pageContext.request.contextPath}/admin/commentList" toolbar="#tb">
        <thead>
            <tr>
                <th field="cb" checkbox="true" align="center"></th>
                <th field="com_id" align="center" width="20px">编号</th>
                <th field="user_name" align="center" width=100px">评论者名字</th>
                <th field="comment" align="center" width="200px">评论内容</th>
                <th field="com_time" align="center" width="50px">评论日期</th>
            </tr>
        </thead>
    </table>
    <div id="tb">
        <div>
            <a href="javascript:deleteComment()" class="easyui-linkbutton" iconCls="icon-ok" plain="true">删除</a>
            <a href="javascript:reload()" class="easyui-linkbutton" iconCls="icon-reload" plain="true">刷新</a>
        </div>
    </div>
</body>
</html>
