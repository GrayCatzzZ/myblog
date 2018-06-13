<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="headband"></div>
		<header id="header" class="header" >
			<div class="header-inner">
				<div class="site-brand-wrapper">
					<div class="site-meta ">
						<div class="custom-logo-site-title">
							<a href="${pageContext.request.contextPath }/index.action"  class="brand" rel="start">
								<span class="logo-line-before"><i></i></span>
								<span class="site-title">SHIQI's Blog</span>
								<span class="logo-line-after"><i></i></span>
							</a>
						</div>
						<p class="site-subtitle"></p>
					 </div>
				</div>
				<!--分类标签-->
				<nav class="site-nav">
					<ul id="menu" class="menu">
						<li class="menu-item menu-item-home">
							<a href="${pageContext.request.contextPath }/index.action" rel="section">
								<i class="menu-item-icon fa fa-fw fa-home"></i> <br />
								 Home
							</a>
						</li>
						<li class="menu-item menu-item-about">
							<a href="${pageContext.request.contextPath }/page/about.jsp" rel="section">
								<i class="menu-item-icon fa fa-fw fa-user"></i> <br /> 
								About
							</a>
						</li>
						<li class="menu-item menu-item-tags">
							<a href="${pageContext.request.contextPath }/comments.action" rel="section">
								<i class="menu-item-icon fa fa-fw fa-tags"></i> <br />
								Comments
							</a>
						</li> 
						<li class="menu-item menu-item-categories">
							<a href="${pageContext.request.contextPath }/categories.action" rel="section">
								<i class="menu-item-icon fa fa-fw fa-th"></i> <br /> 
								Categories
							</a>
						</li>   
						<li class="menu-item menu-item-archives">
							<a href="${pageContext.request.contextPath }/archives.action" rel="section">
								<i class="menu-item-icon fa fa-fw fa-archive"></i> <br />
								Archives
							</a>
						</li>
					 </ul>
				</nav>
			</div>
		</header>

