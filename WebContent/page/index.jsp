<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html class="theme-next pisces use-motion" lang="en">
 <head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

  <link href="${pageContext.request.contextPath }/lib/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath }/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath }/css/main.css" rel="stylesheet" type="text/css" />
  <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath }/images/apple-touch-icon-next.png">
  <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath }/images/favicon-32x32-next.png">
  <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/images/favicon-16x16-next.png">
  <link rel="mask-icon" href="${pageContext.request.contextPath }/images/logo.svg" color="#222">
  <script type="text/javascript" id="hexo.configurations">
	var NexT = window.NexT || {};
	var CONFIG = {
	  root: '/',
	  scheme: 'Pisces',
      version: '5.1.4',
      sidebar: {"position":"left","display":"post","offset":12,"b2t":false,"scrollpercent":false,"onmobile":false},
      fancybox: true,
      tabs: true,
      motion: {"enable":true,"async":false,"transition":{"post_block":"fadeIn","post_header":"slideDownIn","post_body":"slideDownIn","coll_header":"slideLeftIn","sidebar":"slideUpIn"}},
    duoshuo: {
      userId: '0',
      author: 'Author'
    },
    algolia: {
      applicationID: '',
      apiKey: '',
      indexName: '',
      hits: {"per_page":10},
      labels: {"input_placeholder":"Search for Posts","hits_empty":"We didn't find any results for the search: ${query}","hits_stats":"${hits} results found in ${time} ms"}
	 }
   };
  </script>
 <title>SHIQI's Blog</title>
 </head>

 <body lang="en">
	<div class="container sidebar-position-left page-home">
	
		<jsp:include page="./head.jsp"></jsp:include>
		
		<!--主要内容。包括文章，个人简介（左栏）-->
    <main id="main" class="main">
      <div class="main-inner">
	  <!--main inner 包含个人简介-->
        <div class="content-wrap">
          <div id="content" class="content">      
			<section id="posts" class="posts-expand">
			<c:forEach items="${pageBean.articlectList}" var="article">
				<article class="post post-type-normal">		
					<div class="post-block">				
							<header class="post-header">
								<h1 class="post-title" >
								<a class="post-title-link" href="${pageContext.request.contextPath }/article?art_id=${article.art_id}">${article.title } </a></h1>
								<div class="post-meta">
									<span class="post-time">
										<span class="post-meta-item-icon">
											<i class="fa fa-calendar-o"></i>
										</span>
										<span class="post-meta-item-text">Posted on</span>
              
										<time title="Post created">
											${article.art_time}
										</time>  
									</span>
									<span class="post-category" >
										<span class="post-meta-divider">|</span>
										<span class="post-meta-item-icon">
											<i class="fa fa-folder-o"></i>
										</span>
										<span class="post-meta-item-text">In</span>
										<span >
											<a href="${pageContext.request.contextPath }/categroy_list?cat_id=${article.category.cat_id}" >
												<span >${article.category.cat_name }</span>
											</a>
										</span>
									</span>
									<!--noindex-->
									<span class="post-comments-count">
										<span class="post-meta-divider">|</span>
										<span class="post-meta-item-icon">
											<i class="fa fa-comment-o"></i>
										</span>
										<!-- 评论数 -->
										<a href="/2018/01/16/Ixd8/#comments" itemprop="discussionUrl">
											<span class="post-comments-count hc-comment-count" data-xid="2018/01/16/Ixd8/" itemprop="commentsCount">aaa</span>
										</a>
									</span>
									<!--/noindex-->
								</div>
							</header>
							<div class="post-body" >
								<p>${article.content }
								<!--noindex-->
								<div class="post-button text-center">
									<a class="btn" href="${pageContext.request.contextPath }/article?art_id=${article.art_id}" >
										Read more &raquo;
									</a>
								</div>
								<!--/noindex-->
							</div>
							<footer class="post-footer">
								<div class="post-eof"></div>
							</footer>
					</div>
				
				</article> 
				</c:forEach>
			</section>
			<nav class="pagination">
			<!-- 判断当前页是否是第一页 -->
			<c:if test="${pageBean.currentPage==1 }">
				<a class="extend prev" rel="prev" href="javascript:void(0)">
				<i class="fa fa-angle-left"></i>
				</a>
			</c:if>
			<c:if test="${pageBean.currentPage!=1 }">
				<a class="extend prev" rel="prev" href="${pageContext.request.contextPath }/index.action?currentPage=${pageBean.currentPage-1}">
				<i class="fa fa-angle-left"></i>
				</a>
			</c:if>
			<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
				<!-- 判断当前页 -->
				<c:if test="${pageBean.totalPage!=page}">
				<span class="page-number current">${page}</span>
				</c:if>
				<c:if test="${pageBean.totalPage==page}">
				<a class="page-number" href="${pageContext.request.contextPath }/index.action?currentPage=${page}">${page}</a>
				</c:if>
			</c:forEach>
				<!-- 判断当前页是否是最后一页 -->
			<c:if test="${pageBean.currentPage==pageBean.totalPage }">
				<a class="extend next" rel="next" href="javascript:void(0)">
				<i class="fa fa-angle-right"></i>
				</a>
			</c:if>
			
			<c:if test="${pageBean.currentPage!=pageBean.totalPage }">
				<a class="extend next" rel="next" href="${pageContext.request.contextPath }/index.action?currentPage=${pageBean.currentPage+1}">
				<i class="fa fa-angle-right"></i>
				</a>
			</c:if>
			</nav>
          </div>
        </div>
        <!--左侧栏目-->
		<jsp:include page="./left.jsp"></jsp:include>
		     
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        <div class="copyright">&copy; <span >2018</span>
			<span class="with-love">
				<i class="fa fa-user"></i>
			</span>
			<span class="author" >SHIQI</span> 
		</div>
		<div class="powered-by">Powered by <a class="theme-link" target="_blank" href="https://hexo.io">Hexo</a></div>
		<span class="post-meta-divider">|</span>
		<div class="theme-info">Theme &mdash; <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">NexT.Pisces</a> v5.1.4</div>
      </div>
    </footer>

	<!--快速去上-->
    <div class="back-to-top">
		<i class="fa fa-arrow-up"></i>
    </div>
  </div>

  

<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
 
</script>

    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery/index.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/fastclick/lib/fastclick.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/jquery_lazyload/jquery.lazyload.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/velocity/velocity.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/velocity/velocity.ui.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/fancybox/source/jquery.fancybox.pack.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath }/lib/canvas-nest/canvas-nest.min.js"></script>  
   <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/utils.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/motion.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/affix.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/schemes/pisces.js"></script>   	
   <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/bootstrap.js"></script>


</body>
</html>
