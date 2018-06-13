<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath }/images/apple-touch-icon-next.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath }/images/favicon-32x32-next.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/images/favicon-16x16-next.png">
  <link rel="mask-icon" href="${pageContext.request.contextPath }/images/logo.svg" color="#222">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8" />
		
		<script src="${pageContext.request.contextPath }/lib/jquery/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/register.css"/>
<title>用户登陆</title>
</head>
<body>
<section>
			<form action="${pageContext.request.contextPath }/login.action" method="post" onSubmit="return check();">
				<%=request.getAttribute("message")==null?"":request.getAttribute("message") %>
				<div class="register-box">
				<label  class="username_label">用 户 名
					<input maxlength="20" type="text" name="user_name" placeholder="您的用户名和登录名"/>
					
					</label>
					<div class="tips">					
					</div>
				</div>
				<div class="register-box">
					<label class="other_label">密 码
					<input maxlength="20" type="password" name="user_password" placeholder="建议至少使用两种字符组合"/>
					</label>
					<div class="tips">
						
					</div>
				</div>
			
				<div class="register-box">
					<label class="other_label">验 证 码
					<input maxlength="20" type="text" name="checkcode" placeholder="请输入验证码"/>
					</label>
					<img style="height:40px " id="loginformvCode" src="${pageContext.request.contextPath }/validatecode.jsp"
								onclick="javascript:document.getElementById('loginformvCode').src='${pageContext.request.contextPath }/validatecode.jsp?'+Math.random();" />
					<div class="tips">
					<div style="color:red"><%=request.getAttribute("checkcode")==null?"":request.getAttribute("checkcode") %>		</div>				
					</div>
				</div>
				<div class="submit_btn">	
					<button  id="submit" >立即登陆</button>			
				</div>				
			</form>
		</section>
		<script type="text/javascript" src="${pageContext.request.contextPath }/lib/canvas-nest/canvas-nest.min.js"></script>
</body>
</html>