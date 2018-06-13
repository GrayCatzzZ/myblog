<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="./editor/editormd.css"/>
<link rel="stylesheet" type="text/css" href="./editor/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="editormd" id="test-editormd">
  <textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc"></textarea>
  <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
  <textarea class="editormd-html-textarea" name="text"></textarea>
</div>

 	<script src="./editor/jquery.min.js"></script>
        <script src="./editor/editormd.min.js"></script>
<script type="text/javascript">
  $(function() {
      editormd("test-editormd", {
          width   : "50%",
          height  : 340,
          syncScrolling : "single",
          //你的lib目录的路径，我这边用JSP做测试的
          path    : "<%=request.getContextPath()%>/editor/lib/",
          //这个配置在simple.html中并没有，但是为了能够提交表单，使用这个配置可以让构造出来的HTML代码直接在第二个隐藏的textarea域中，方便post提交表单。
          saveHTMLToTextarea : true
      });
  });
</script>

</body>
</html>