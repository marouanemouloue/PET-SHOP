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
      	
   
  

<main class="container2">

    <!-- Left Column / Headphones Image -->
    <div class="left-column1">
        <img data-image="black" src="assets/images/${produit.image}.jpg" alt="">
    </div>


    <!-- Right Column -->
    <div class="right-column1">

        <!-- Product Description -->
        <div class="product-description">
           
        
          <h1>${produit.nom}</h1>
           
            <p>${produit.details}</p>
        </div>

      

        <!-- Product Pricing -->
        <div class="product-price">
            <span>${produit.prix}$</span>
            <a href="#" class="cart-btn">Add to cart</a>
        </div>
    </div>
</main>


            
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