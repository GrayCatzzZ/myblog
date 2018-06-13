<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="theme-color" content="#222">
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

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

  <title>Category | SHIQI's Blog</title>
  
  <script type="text/javascript">
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?f75c9fc55ce711d994ad937b3930c70a";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();
  </script>

 </head>
 <body lang="en">
 	<div class="container sidebar-position-left ">
	<jsp:include page="./head.jsp"></jsp:include>
	 
	<main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
  			<div class="post-block category">
    			<div id="posts" class="posts-collapse">
      				<div class="collection-title">
      				
      					<!-- 作品名称 -->
        				<h1>作品集<small>Category</small>
        				</h1>
      				</div>
      				<!-- 文章 -->
      				<c:if test="${! empty categroy_list }">
      				<c:forEach items="${categroy_list }" var="article">
  					<article class="post post-type-normal" >
    					<header class="post-header">
      						<h2 class="post-title">
            					<a class="post-title-link" href="article?art_id=${article.art_id }">
                					<br/><span>${article.title}</span>
            					</a>        
      						</h2>
      						<div class="post-meta">
        						<time class="post-time">
          							${article.art_time}
       							</time>
      						</div>
    					</header>
  					</article>
  					</c:forEach>
  					</c:if>  					
  				</div>
  			</div>  
          </div>
        </div>
        	 	
	 	<jsp:include page="./left.jsp"></jsp:include>
		</div>
	</main>
	 
	 <jsp:include page="./footer.jsp"></jsp:include>
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