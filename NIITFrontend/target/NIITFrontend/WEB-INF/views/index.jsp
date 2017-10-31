<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
  <link rel="stylesheet" href="<c:url value="resources/bootstrap/css/bootstrap.min.css"/>">
   <link rel="stylesheet" href="<c:url value="resources/assets/fonts/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="resources/css/styles.css"/>">
</head>


<body id="promo">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="index"><img src="resources/images/rolex.jpg"<strong>Watch Out</strong></a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="active" role="presentation"><a href="#">Home </a></li>
                    <li role="presentation"><a href="#">Profile </a></li>
                    <li role="presentation"><a href="#">Message </a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Signup<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation"><a href="#">Login action</a></li>
                            <li role="presentation"><a href="#">Regiistration action</a></li>
                            <li role="presentation"><a href="#">Contactus </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div></div>
    <div></div>
    <div></div>
    <div class="jumbotron visible-xs-block">
        <h1>Watch Out</h1>
        <p>Now is the right time</p>
        <p></p>
        <input type="color">
    </div>
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
<!-- ================= -->

<!-- <div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  Indicators
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
  </ol>

  Wrapper for slides
  <div class="carousel-inner">
    <div class="item active">
      <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\Admin\Desktop\watches\snew arrivals.jpg" style="width:100%" "height="50%">
    </div>
    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\Admin\Desktop\watches\watches2.jpg" style="width:100%" "height="50%">
    </div>

    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src="C:\Users\Admin\Desktop\watches\watches3.jpg" style="width:100%" "height="20%">
    </div>
 
  </div>
  Left and right controls
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div> -->

<!-- =================================== -->
<<%-- /br>
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
             <div class="panel-body"> <img src="/NIITFrontend/myImage/imageDisplay?id=${product.id}" class="img-responsive" style="width:100%" alt="Image"></div>
                <img src="<c:url value="/resources/assets/img/rv_1-gito-1.jpg"/>">
                    <div class="caption">
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
                
         <script src="<c:url value="resources/assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-hover-dropdown/2.2.1/bootstrap-hover-dropdown.min.js"></script>
         
        </div>
<br/><br/><br/><br/>
	<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>  --%>