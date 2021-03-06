<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category Page</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/Pretty-Footer.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="bs-example">
    <nav id="myNavbar" class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container blue">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Watch Out</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Profile</a></li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Messages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="">Inbox</a></li>
                            <li><a href="#">Drafts</a></li>
                            <li><a href="#">Sent Items</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Trash</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Admin <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="category">Category action</a></li>
                            <li><a href="supplier">Supplier action</a></li>
                            <li><a href="product">Product action</a></li>
                            <li class="divider"></li>
                            <!-- <li><a href="logout">Logout</a></li> -->
                         
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                            
                           
                            
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>
</div>

	<div class="container">
	      <form:form commandName="category" method="post" action="addCategory">
				<p><font color="red">${errorMessage}</font></p>				
				<h5>
				<strong>
			     <c:choose>
			     	<c:when test="${category.category_id==0}">  Add New Item </c:when>
			     	<c:when test="${!empty category.category_id}">Update Category for Id: <c:out value="${category.category_id}"/></c:when>
			     </c:choose>
			     </strong>
			     </h5>
			    		     
				<div class="form-group row">
				 <div class="col-xs-4">
				   <c:if test="${category.category_id!= 0}">
				   <form:input type="hidden" class="form-control" path="category_id"  placeholder="Category Id" name = "id"/>
				   </c:if>					
				</div>
				</div>
				<br/>
				<div class="form-group row">
					<label for="category_Name" class="col-xs-4 control-label">Category Name</label>
					<div class="col-xs-4">
						<form:input name="categoryName" path="category_Name" placeholder="Category Name" class="form-control" />
					</div>
				</div>
				<div class="form-group row">
					<label for="category_Description" class="col-xs-4 control-label">Category description</label>
					<div class="col-xs-4">
						<form:input name="categoryDescription"  path="category_Description" placeholder="Category Description" class="form-control" />
						 
					</div>
				</div>
				<br/>
				<div class="form-group row">
					<label for="code" class="col-xs-4 control-label"></label>
						
						<div class="col-xs-4">
						
							
						<c:if test="${category.category_id==0}">
						<input type="submit" value="Add Category" id="btn-add" class="btn btn-primary" >
						
						</c:if> <c:if test="${category.category_id!=0}">
						
					   <input type="submit" value="Update Category" id="btn-update" class="btn btn-primary" >
					  </c:if>
						
						
						</div>
					</div>
						
		</form:form><br/>
		,
		<table class="table table-striped table-bordered" style="width:80%">
			<thead>
			<tr>
				<th>S. No.</th>
				<th>Category Id</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>Category Action</th>
			</tr>	
			</thead>
			<tbody>
			   <c:forEach items="${categoryList}" var="category" varStatus="loopCounter">
			   		<tr>
			   			<td><c:out value="${loopCounter.count}"></c:out></td>
			   			<td><c:out value="${category.category_id}"></c:out></td>
			   			<td><c:out value="${category.category_Name}"></c:out></td>
			   			<td><c:out value="${category.category_Description}"></c:out></td>
			   			<td><nobr>
<a class="btn btn-primary" href="editcategory/${category.category_id}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit</a>

<a class="btn btn-primary"  href="removecategory/${category.category_id}"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
								</a>

							</nobr></td>
			   		</tr>
			   </c:forEach>
			</tbody>
		</table>
	</div>
	</body>
	<jsp:include page="footer.jsp" /> 

</html>