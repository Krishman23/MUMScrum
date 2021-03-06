<%@ tag language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">MUMScrum</a>
	</div>
	<!-- Top Menu Items -->
	<ul class="nav navbar-right top-nav">
		<li class="dropdown">
<c:if test="${not empty product}">
  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b>
    <c:out value="${product}"></c:out>
    </a>
</c:if>

		
			<ul class="dropdown-menu alert-dropdown">
				<li><a href="#">Product 2</a></li>
				<li><a href="#">Product 2</a></li>
				<li><a href="<c:url value='/product/new'/>"><i
						class="fa fa-fw fa-envelope"></i> Create product</a></li>
			</ul></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b
				class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#"><i class="fa fa-fw fa-user"></i> Profile</a></li>


				<li class="divider"></li>
				<li><a href="#"><i class="fa fa-fw fa-power-off"></i> Log
						Out</a></li>
			</ul></li>
	</ul>
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li class="active"><a href="<c:url value='/product/{id}' />"><i
					class="fa fa-fw fa-dashboard"></i>Product</a></li>
			<li class="userstorymenu"><a href="<c:url value='/userstory/list' />"><i
					class="fa fa-fw fa-dashboard"></i>User Stories</a></li>
			<li><a href="<c:url value='/release/list' />"><i
					class="fa fa-fw fa-bar-chart-o"></i>Releases</a></li>

		</ul>
	</div>
	<!-- /.navbar-collapse -->
</nav>