<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  <title>About | SHIQI's Blog</title>
  
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
 	<div class="container sidebar-position-left page-post-detail">
	<jsp:include page="./head.jsp"></jsp:include>
	 
	<main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
  			<div id="posts" class="posts-expand">
    			<div class="post-block page">
      				<header class="post-header">
						<h1 class="post-title" itemprop="name headline">About</h1>
					</header>
      				<div class="post-body">       
          				<center><br>This place is where 
          					<a href="https://drive.google.com/open?id=1b7-QgW9pgqfaVskHUcgu1-SjV9BU3DFm" target="_blank" rel="external">SHIQI
          					</a> writes stuffs<br>
          				</center>        
      				</div>   
    			</div>   
  			</div>
          </div>
        </div>
          
	 	<jsp:include page="./left.jsp"></jsp:include>
		</div>
	</main>
	 
	 <jsp:include page="./footer.jsp"></jsp:include>
	 

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
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/scrollspy.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/post-details.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/js/src/bootstrap.js"></script>

		<script type="text/javascript">
		_hcwp = window._hcwp || [];

		_hcwp.push({widget:"Bloggerstream", widget_id: 100025, selector:".hc-comment-count", label: "{\%COUNT%\}" });

		(function() {
		if("HC_LOAD_INIT" in window)return;
		HC_LOAD_INIT = true;
		var lang = (navigator.language || navigator.systemLanguage || navigator.userLanguage || "en").substr(0, 2).toLowerCase();
		var hcc = document.createElement("script"); hcc.type = "text/javascript"; hcc.async = true;
		hcc.src = ("https:" == document.location.protocol ? "https" : "http")+"://w.hypercomments.com/widget/hc/100025/"+lang+"/widget.js";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hcc, s.nextSibling);
		})();
		</script>
	
</body>
</html>