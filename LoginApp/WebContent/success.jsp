<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="org.pv.service.dto.User"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
<h3>Login Successful!!!! </h3>

<%-- <% 
User user=(User) request.getAttribute("user");
%> --%>
<!-- Using JSTL tags to replace the above script as this is a bad practice -->
<jsp:useBean id="user" class="org.pv.service.dto.User" scope="request">
	<jsp:setProperty property="userName" name="user" value="DefaultUser"/>
 </jsp:useBean>

<%-- Hello <%= user.getUserName() %>!! --%>
<!-- Through JSTP -->
<jsp:getProperty property="userName" name="user"/>
</body>
</html>