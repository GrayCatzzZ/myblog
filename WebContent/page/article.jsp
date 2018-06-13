<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="theme-next pisces use-motion" lang="en">
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

  <title>Article | SHIQI's Blog</title>
  
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
  			
  			<!-- 文章 -->
  			<c:if test="${!empty article }">
  				<article class="post post-type-normal" >  
  					<div class="post-block">
      					<header class="post-header">     
      					
      						<!-- 标题 -->   
          					<h1 class="post-title" >
          						${article.title}
          					</h1>
        					<div class="post-meta">
          						<span class="post-time">           
              						<span class="post-meta-item-icon">
                						<i class="fa fa-calendar-o"></i>
              						</span>         
                					<span class="post-meta-item-text">
                						Posted on
                					</span>
                						<!-- 发表时间 -->            
              							<time title="Post created" datetime="2016-10-22T00:00:00+01:00">
                							${article.art_time }
              							</time>
          
          						</span>         
            					<span class="post-category" >           
              						<span class="post-meta-divider">|</span>            
              						<span class="post-meta-item-icon">
                						<i class="fa fa-folder-o"></i>
              						</span>              
                					<span class="post-meta-item-text">In</span>              
                						<span >
                  							<a href="${pageContext.request.contextPath }/categroy_list?cat_id=${article.category.cat_id }" rel="index">
                    							<span >${article.category.cat_name}</span>
                  							</a>
                						</span>             
            					</span>           
            					<!--noindex-->
              					<span class="post-comments-count">
                					<span class="post-meta-divider">|</span>
                					<span class="post-meta-item-icon">
                  						<i class="fa fa-comment-o"></i>
                					</span>
                					
                					<a href="/2016/10/22/passage4/#comments">
                  						<span class="post-comments-count hc-comment-count" data-xid="2016/10/22/passage4/" itemprop="commentsCount"></span>
                					</a>
              					</span>
                      
        					</div>
      					</header>
    				<div class="post-body" >
   
                  ${article.content }

      
    			</div>

    		<footer class="post-footer">
      
        		<div class="post-tags">
        			<!-- 所属分类 -->          
            		<a href="${pageContext.request.contextPath }/categroy_list?cat_id=${article.category.cat_id }" rel="tag"># ${article.category.cat_name}</a>          
        		</div>
        		<div class="post-nav">
        		<c:if test="${!empty preArticleById }"> 
          			<div class="post-nav-next post-nav-item">
          			<!-- 上一篇 -->            			        
              			<a href="${pageContext.request.contextPath }/article?art_id=${preArticleById.art_id}" rel="next" title="${preArticleById.title }">
                			<i class="fa fa-chevron-left"></i> ${preArticleById.title }
              			</a>            
          			</div>
				</c:if>
				<!-- 上一篇不存在 -->
				<c:if test="${empty preArticleById }"> 
          			<div class="post-nav-next post-nav-item">
          			<!-- 上一篇 -->            			        
              			<a href="javascript:void(0)" rel="next" title="上一篇不存在">
                			<i class="fa fa-chevron-left"></i> 上一篇不存在
              			</a>            
          			</div>
				</c:if>
          			<span class="post-nav-divider"></span>
          			<c:if test="${!empty postArticleById }"> 
          			<div class="post-nav-prev post-nav-item">            
              			<a href="${pageContext.request.contextPath }/article?art_id=${postArticleById.art_id}" rel="prev" title="${postArticleById.title }">
                			${postArticleById.title }
                			<i class="fa fa-chevron-right"></i>
              			</a>            
          			</div>
          			</c:if>
          			<!-- 下一篇不存在 -->
          			<c:if test="${empty postArticleById }"> 
          			<div class="post-nav-prev post-nav-item">            
              			<a href="javascript:void(0)" rel="prev" title="下一篇不存在">
                			下一篇不存在
                			<i class="fa fa-chevron-right"></i>
              			</a>            
          			</div>
          			</c:if>
        		</div>   
    		</footer>
  		</div> 
  	</article>
  	</c:if>
  	</div>
 		  </div>  
    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/wangeditor/release/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#editor')
        // 或者 var editor = new E( document.getElementById('editor') )
        
        editor.customConfig.uploadImgShowBase64 = true  
        editor.create()
        
        
         document.getElementById('btn1').addEventListener('click', function () {
        // 读取 html
        alert(editor.txt.html())
    }, false)

    document.getElementById('btn2').addEventListener('click', function () {
        // 读取 text
        alert(editor.txt.text())
    }, false)

    </script>
    <div>
    	
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