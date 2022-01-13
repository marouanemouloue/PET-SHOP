<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.ArrayList"%>
    <%@ page import="ma.ensao.bean.*" %>
        <%@ page import="ma.ensao.DAO.*" %>
<!DOCTYPE html>
  <%	    ProductsDAO produit = new ProductsDAO();

    ArrayList<Products> listFood = new ArrayList<Products> ();
    listFood=(ArrayList<Products>) produit.getProductsByCategory("Foods");
    ArrayList<Products> listAccesoires = new ArrayList<Products> ();
    listAccesoires=(ArrayList<Products>) produit.getProductsByCategory("Accessory");
    ArrayList<Products> listToys = new ArrayList<Products> ();
    listToys=(ArrayList<Products>) produit.getProductsByCategory("Toys");
       
       %>
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
        <h2 class="product-category">Food</h2>
     
        <div class="product-container">
 				    <% for(Products prod : listFood) {%> 
 		
            <div class="product-card">
                <div class="product-image">

                    <a href="Details?name=<%=prod.getNom() %>"><img src="assets/images/<%= prod.getImage() %>.jpg" class="product-thumb" alt=""></a>
                    <button class="card-btn"> <a href="Details?name=<%=prod.getNom() %>">Buy NOW</a></button>
                    
                </div>
                <div class="product-info">
                    <div class="type">
                        <a href="Details?name=<%=prod.getNom() %>"><%= prod.getNom() %></a>
                      
                    </div>
                    <!--price-------->
                    <a href="Details?name=<%=prod.getNom() %>" class="price"><%= prod.getPrix() %>DH</a>
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
 				<% for(Products prod : listAccesoires) {  %>	
            <div class="product-card">
                <div class="product-image">

                    <img src="assets/images/<%= prod.getImage() %>.jpg" class="product-thumb" alt="">
                    <button class="card-btn">Buy now</button>
                    
                </div>
                <div class="product-info">
                    <div class="type">
                        <a href="#"><%= prod.getNom() %></a>
                      
                    </div>
                    <!--price-------->
                    <a href="#" class="price"><%= prod.getPrix() %>DH</a>
                </div>
            </div>
            <%}%>
            </div>
              
    </section>
    <section class="product">
        <h2 class="product-category">Food</h2>
        <button class="pre-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <button class="nxt-btn"><img src="assets/images/nextPage.png" alt=""></button>
        <div class="product-container">
 				    <% for(Products prod : listToys) {%> 
 		
            <div class="product-card">
                <div class="product-image">

                    <img src="assets/images/<%= prod.getImage() %>.jpg" class="product-thumb" alt="">
                    <button class="card-btn">Buy now</button>
                    
                </div>
                <div class="product-info">
                    <div class="type">
                        <a href="#"><%= prod.getNom() %></a>
                      
                    </div>
                    <!--price-------->
                    <a href="#" class="price"><%= prod.getPrix() %>DH</a>
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