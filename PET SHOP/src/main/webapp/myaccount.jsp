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
    	
            	

				<div class="feat_prod_box_details">
					<p class="details" style="color: red; font-weight: bold;">
						${error ? "Username or password incorrect" : ""}<br>

					</p>

					<div class="contact_form">
						
						<form name="register" action="Account" method="post">
							<div class="form_row">
								<label class="contact"><strong>Username:</strong></label> <input
									name="username" type="text" class="contact_input" required />
							</div>
							<div class="form_row">
								<label class="contact"><strong>Password:</strong></label> <input
									type="password" name="password" class="contact_input" required />
							</div>

							<div class="form_row">
								<div class="terms">
									<input type="checkbox" name="rememberMe" value="rememberMe" />
									Remember me
								</div>
							</div>
							<div class="form_row">
								<input type="submit" class="register" value="login" />
							</div>
						</form>
					</div>
				</div>
       
            <div class="clear"></div>
      </div>
      <%@ include file="include/rightContent.jsp" %>
        
            <div class="clear"></div>
       </div><!--end of center content-->
       <%@include file="include/footer.jsp" %>
</div>
</body>
</html>