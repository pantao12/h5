<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <c:if test="${param.msg}">
    系统消息上传成功！<br>
   </c:if>
        <%  
          request.setCharacterEncoding("UTF-8");  
  
          String msg=request.getParameter("msg");  
          msg=new String(msg.getBytes("iso-8859-1"),"UTF-8");  
        %>  
        <%  
            if(!msg.equals("success"))  
            {  
        %>  
                  
                上传失败，请输入令牌！<br/>  
        <%  
            }  
            else  
            {  
        %>  
                    上传成功！<br>
        <%  
            }  
        %> 
   <a href = "<%=path%>/index.jsp">继续上传</a>   <a href = "<%=path%>/servlet/ListServlet">查看上传文件</a>
  </body>
</html>
