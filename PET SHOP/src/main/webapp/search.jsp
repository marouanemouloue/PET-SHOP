<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="ma.ensao.bean.*" %>
        <%@ page import="ma.ensao.DAO.*" %>
            <%@ page import ="java.util.ArrayList"%>
        
<!DOCTYPE html>
<%    
ProductsDAO produit = new ProductsDAO();
ArrayList<Products> list = new ArrayList<Products> ();
list=produit.getProductsByName(request.getParameter("search"));
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
      	<% if(!list.isEmpty()){ %>
           <% for(Products prod : list ) {%> 
   	    <div class="feat_prod_box">
            
            	<div class="prod_img"><a href="details.html"><img src="assets/images/<%= prod.getImage() %>.jpg" alt="" title="" border="0" /></a></div>
                
                <div class="prod_det_box">
                	<div class="box_top"></div>
                    <div class="box_center">
                    <div class="prod_title"> <a href="Details?name=<%=prod.getNom() %>"><%= prod.getNom() %></a></div>
                    
                    <p class="details"><%= prod.getDetails() %></p>
                      <a href="Details?name=<%=prod.getNom() %>" class="more">- more details -</a>
                        <div class="clear"></div>
                   
        </div>
                    
                 
                    <div class="box_bottom"></div>
                </div>    
            <div class="clear"></div>
            </div>	
            <%}; %>
            <%}; %>


    








             
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