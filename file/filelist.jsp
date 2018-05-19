<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>chengjunfeng-file</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <table>
      <c:forEach var = "fn" varStatus="sta" items="${filenamelist}">
      <%
          String name = (String)pageContext.getAttribute("fn");
          name = URLEncoder.encode(name,"UTF-8");
       %>
       <tr>
       		<td>${sta.count} . <a href = "<%=path%>/servlet/DownServlet?filename=<%=name%>">${fn}</a></td>
       </tr>
      </c:forEach>
      </table>
  </body>
</html>
