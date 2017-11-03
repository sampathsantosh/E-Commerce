<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>
${ExistingMessage}
<div class="bs-example">
    <nav id="myNavbar" class="navbar navbar-inverse" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="container">
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
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">PROFILE</a></li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">MESSAGES<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="">Inbox</a></li>
                            <li><a href="#">Drafts</a></li>
                            <li><a href="#">Sent Items</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Trash</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav">
                    <li><a href="viewcart">CART</a></li>
               </ul> 
                <ul class="nav navbar-nav navbar-right">
                       <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">Loggedin<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                             <li class="divider"></li>
                              <li> <a href="<c:url value="j_spring_security_logout" />">Logout</a></li>
                    	</ul>
                    	
                </ul>
                     
            </div><!-- /.navbar-collapse -->
        </div>
    </nav>
</div>
</br>
</br>
</br>
</br>
</br>
</br>
</br>
<div class="container">
          
        <div class="row">
<c:forEach items="${ProductList}" var="product">     
            <div class="col-sm-4">
                <div class="panel panel-primary">
             <div class="panel-body"> <img src="/NIITFrontend/myImage/imageDisplay?id=${product.id}" class="img-responsive"  alt="Image"></div>
                <%-- <img src="<c:url value="/resources/assets/img/rv_1-gito-1.jpg"/>">
                    --%> <div class="caption">
                        <h3>${product.name}</h3>
                        <ul>
                         <p>${product.description}</p>
                        <li>Price: Rs.<Strong>${product.price}</Strong></li>
                       
     
                   <form:form action="addtoCart/${product.id}" method="POST">
                                <input type="submit" value="Add to Cart" class="btn btn-primary">
                                </form:form>
                                
                                </ul>
                            </div>
                        </div>
                    </div>
         
           </c:forEach>       
                </div>
                
         
        </div>
<br/><br/><br/><br/>
	<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html> 