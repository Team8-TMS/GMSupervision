<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.services.*"%>
    <%@ page import="com.entities.*"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Welcome to TMS</title>
</head>
<body>
<div id="container">
		 <%@include file="header.jsp" %>
       
         <%@include file="site_navigation.jsp" %>
        
        <%@include file="leftpane_navigation.jsp" %>
        
        
        
        
		<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        	<h2><u>Report</u></h2>
<p>&nbsp;</p>
           	<table border="0" bordercolor="#000033" width="100%">
           	<tr><td><h3>ReportID</h3></td>
           	<td><h3>TID</h3></td>
           	<td><h3>Action</h3></td>
           	<td><h3>Performed ID</h3></td>
           	<td><h3>Performed Name</h3></td>
           	<td><h3>Performed Date</h3></td></tr>
           	
           <%
           try{
           	wbservice wb=new wbservice();
           	User user=(User)session.getAttribute("User");
           	
           	List<Report> report=wb.getReport();
           	for(Report r: report){
           		if(r.getTid().hashCode()==user.getTid().hashCode()){
           		
           		
           	
           	 %>
           	<tr><td><%=r.getReportid()%></td>
           	<td><%=r.getTid()%></td>
           	<td><%=r.getAction()%></td>
           	<td><%=r.getPerformedBy()%></td>
           	<td><%=r.getPerformedName()%></td>
           	</tr>
           	 
           	<%}}}catch(Exception e){
           	e.printStackTrace();
           	
           	
           	}	
           		%>
           	
           	
           	</table>
           	
                    	
        </div>
        <div id="content_bottom"></div>
        <%@include file="footer.jsp" %>
   </div>

</body>
</html>
