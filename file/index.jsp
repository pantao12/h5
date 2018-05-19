<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	<style>
	  table{
	      border:1px solid blue;
	  }
	</style>
  </head>
  
  <body>
     <form action="<%=path%>/servlet/UploadServelt" method="post" enctype="multipart/form-data">
     		<table> 
     		 <th colspan = "2" align = "center">文件上传</th>
     		 <tr>
     		 	<td>令牌</td>
     		 	<td><input type = "text" name = "username"></td>
     		 </tr>
     		       
     		  <tr>
     		 	<td>文件</td>
     		 	<td><input type = "file" name = "f1"></td>
     		 </tr>
     		 <tr>
     		 	<td colspan = "2" align = "center" >
     		 	<input type = "submit" value = "提交">
     		 	<input type = "reset" value = "重置"></td>
     		 </tr>
     		</table>
     </form>
  </body>
</html>
