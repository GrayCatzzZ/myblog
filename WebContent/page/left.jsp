<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<div class="sidebar-toggle">
    <div class="sidebar-toggle-line-wrap">
      <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
      <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
    </div>
  </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:"${pageContext.request.contextPath}/ajax.action",
			type:"post",
			dataType:"json",
			success:function(data){
				document.getElementById("articleCount").innerText=data.articleCount;
				document.getElementById("categoryCount").innerText=data.categoryCount;
			}
			
		});
	});
</script>
<aside id="sidebar" class="sidebar">
			<div class="sidebar-inner">
				<section class="site-overview-wrap sidebar-panel sidebar-panel-active">
					<div class="site-overview">
						<div class="site-author motion-element" >
							<img class="site-author-image" 
								src="http://7xohes.com1.z0.glb.clouddn.com/avatar.png"
								alt="SHIQI" />
							<p class="site-author-name" >SHIQI</p>
							<p class="site-description motion-element" ></p>
						</div>
						<nav class="site-state motion-element">
							<div class="site-state-item site-state-posts">
								<a href="/archives/">
									<span class="site-state-item-count" id="articleCount"></span>
									<span class="site-state-item-name">posts</span>
								</a>
							</div>
							<!--categroies 分类-->
							<div class="site-state-item site-state-categories">
								<a href="/categories/index.html">
									<span class="site-state-item-count" id="categoryCount"></span>
									<span class="site-state-item-name">categories</span>
								</a>
							</div>
							<!--tags标签-->
							<div class="site-state-item site-state-tags">
								<a href="/tags/index.html">
									<span class="site-state-item-count">10</span>
									<span class="site-state-item-name">comments</span>
								</a>
							</div>
						</nav>
						<!--rss
						<div class="feed-link motion-element">
							 <a href="/atom.xml" rel="alternate">
								<i class="fa fa-rss"></i>
								 RSS
							</a>
						</div>
						-->
						<!--与我联系-->
						<div class="links-of-author motion-element">
							<span class="links-of-author-item">
								<a href="https://github.com/GrayCatzzZ" target="_blank" title="GitHub">
									<i class="fa fa-fw fa-github"></i>GitHub</a>
								</span>
							<span class="links-of-author-item">
								<a href="https://medium.com/@ursocute" target="_blank" title="Medium">
									<i class="fa fa-fw fa-medium"></i>CSDN</a>
							</span>               
							<span class="links-of-author-item">
								<a href="https://zhuanlan.zhihu.com/ursocute" target="_blank" title="Zhihu">
									<i class="fa fa-fw fa-quora"></i>Zhihu</a>
							</span>             
							<span class="links-of-author-item">
								<a href="mailto:89284257@qq.com" target="_blank" title="E-Mail">  
									<i class="fa fa-fw fa-paper-plane-o"></i>E-Mail</a>
							</span> 
							 <!-- 判断用户是否登陆  未登陆 -->
							 <c:if test="${empty sessionScope.user }">
	  						<span class="links-of-author-item">
								<a href="${pageContext.request.contextPath }/page/login.jsp">  
									<i class="fa fa-fw fa-paper-plane-o"></i>登陆主站</a>
							</span> 
							<span class="links-of-author-item">
								<a href="${pageContext.request.contextPath }/page/register.jsp">  
									<i class="fa fa-fw fa-paper-plane-o"></i>注册</a>
							</span> 
	 						 </c:if>
	 						 <!-- 判断用户是否登陆  已经登陆 -->
	 						  <c:if test="${!empty sessionScope.user }">
	  						<span class="links-of-author-item">
								欢迎您：${sessionScope.user.user_name }
							</span> 
							<span class="links-of-author-item">
								<a href="${pageContext.request.contextPath }/outLogin" >  
									<i class="fa fa-fw fa-paper-plane-o"></i>退出登录</a>
							</span>
	 						 </c:if>
							
						</div>
					</div>
				</section>
			</div>
			<div>
			</div>
		</aside>     

