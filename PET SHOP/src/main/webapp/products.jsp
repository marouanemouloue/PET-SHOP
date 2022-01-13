<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import ="java.util.ArrayList"%>
    <%@ page import="ma.ensao.bean.Products" %>
        <%@ page import="ma.ensao.DAO.ProductsDAO" %>
        
    
       

<!DOCTYPE html>
    <%	    ProductsDAO produit = new ProductsDAO();

    ArrayList<Products> list = new ArrayList<Products> ();
    list=(ArrayList<Products>) produit.getProductsByCategory("Foods");
       
       %>
<html>
<head>
        <%@ include file="include/style.jsp" %>
        <%@ include file="include/js.jsp" %>
<meta charset="UTF-8">
<title>Liste des Produits</title>
</head>
<body>
<div id="wrap">
<%@ include file="include/header.jsp" %>
 <div class="center_content">
      	<div class="left_content">
          <% for(Products prod : list) {%>
  <div class="new_prod_box">
   <a href="details.html"><%= prod.getNom() %></a>
     <div class="new_prod_bg">
         <a href="details.html"><img src="assets/images/<%= prod.getImage() %>.gif" alt="" title="" class="thumb" border="0" /></a>
     </div>           
  </div>   
<% }; %>
</div>
        <div class="clear"></div>


<div class="clear"></div>
</div>
<%@ include file="include/footer.jsp" %>

</div>
</body>
</html>