<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet Shop</title>
<%@ include file="include/style.jsp" %>

</head>
<body>
<div id="wrap">
<%@ include file="include/header.jsp" %>
    <div class="center_content">
      	<div class="left_content">
      	
        	
<section class="product">
        <h2 class="product-category">best selling</h2>
        <button class="pre-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <button class="nxt-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <div class="product-container">
 				<% for( int i=0;i<10;i++){  %>	
 		
            <div class="product-card">
                <div class="product-image">

                    <img src="assets/images/pet2.jpg" class="product-thumb" alt="">
                    <button class="card-btn">Buy now</button>
                    
                </div>
                <div class="product-info">
                    <div class="type">
                        <a href="#">Rabbed Cardigan</a>
                        <span>Noe Arrival</span>
                    </div>
                    <!--price-------->
                    <a href="#" class="price">$23</a>
                </div>
            </div>
            <%}%>
            </div>

           
    </section>

    <section class="product">
        <h2 class="product-category">Accessoires</h2>
       <button class="pre-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <button class="nxt-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <div class="product-container">
 				<% for( int i=0;i<10;i++){  %>	
            <div class="product-card">
                <div class="product-image">

                    <img src="assets/images/pet2.jpg" class="product-thumb" alt="">
                    <button class="card-btn">Buy now</button>
                    
                </div>
                <div class="product-info">
                    <div class="type">
                        <a href="#">Rabbed Cardigan</a>
                        <span>Noe Arrival</span>
                    </div>
                    <!--price-------->
                    <a href="#" class="price">$23</a>
                </div>
            </div>
            <%}%>
            </div>
              
    </section>








            
        <div class="clear"></div>
        </div><!--end of left content-->
      <%@ include file="include/rightContent.jsp" %>
        
            <div class="clear"></div>
       </div><!--end of center content-->
       <%@include file="include/footer.jsp" %>
</div>
<%@ include file="include/js.jsp" %>
</body>
</html>