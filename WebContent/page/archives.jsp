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

  <link href="../lib/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
  <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="../css/main.css" rel="stylesheet" type="text/css" />
  <link rel="apple-touch-icon" sizes="180x180" href="../images/apple-touch-icon-next.png">
  <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon-32x32-next.png">
  <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon-16x16-next.png">
  <link rel="mask-icon" href="../images/logo.svg" color="#222">

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

  <title>Archives | SHIQI's Blog</title>
  
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
			<div class="post-block archive">
    			<div id="posts" class="posts-collapse">
      				<span class="archive-move-on"></span>
      				<span class="archive-page-counter">              
        				Um..! 29 posts in total. Keep on posting.
      				</span>   
      				<!-- 时间戳 -->     
          			<div class="collection-title">
            			<h1 class="archive-year" id="archive-year-2018">2018</h1>
          			</div>
          			<!-- 文章 -->
  					<article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
    					<header class="post-header">
      						<h2 class="post-title">       
            					<a class="post-title-link" href="/2018/01/16/Ixd8/" itemprop="url">
                					<span itemprop="name">PlantPeace - A Peaceful Living Space</span>
            					</a>        
      						</h2>
      						<div class="post-meta">
        						<time class="post-time" itemprop="dateCreated"
              						datetime="2018-01-16T00:00:00+00:00"
              						content="2018-01-16" >
          							01-16
        						</time>
      						</div>
    					</header>
  					</article>

    </div>
  			</div>
 
  			<nav class="pagination">
    			<span class="page-number current">1</span>
    				<a class="page-number" href="/archives/page/2/">2</a>
    				<a class="page-number" href="/archives/page/3/">3</a>
    				<a class="extend next" rel="next" href="/archives/page/2/">
    					<i class="fa fa-angle-right"></i>
    				</a>
  			</nav>
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


  <script type="text/javascript" src="../lib/jquery/index.js"></script>
  <script type="text/javascript" src="../lib/fastclick/lib/fastclick.min.js"></script>
  <script type="text/javascript" src="../lib/jquery_lazyload/jquery.lazyload.js"></script> 
  <script type="text/javascript" src="../lib/velocity/velocity.min.js"></script>
  <script type="text/javascript" src="../lib/velocity/velocity.ui.min.js"></script>  
  <script type="text/javascript" src="../lib/fancybox/source/jquery.fancybox.pack.js"></script>
  <script type="text/javascript" src="../lib/canvas-nest/canvas-nest.min.js"></script>
  <script type="text/javascript" src="../js/src/utils.js"></script>
  <script type="text/javascript" src="../js/src/motion.js"></script>
  <script type="text/javascript" src="../js/src/affix.js"></script>
  <script type="text/javascript" src="../js/src/schemes/pisces.js"></script>
  <script type="text/javascript" src="../js/src/scrollspy.js"></script>
  <script type="text/javascript" src="../js/src/post-details.js"></script>
  <script type="text/javascript" src="../js/src/bootstrap.js"></script>

		
</body>
</html>