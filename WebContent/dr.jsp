<%@page import="com.gft.statusreport.ProjectMember"%>
<%@ page import="com.gft.statusreport.UpdateStatusBO" %>
<%@ page import="com.gft.statusreport.ProjectMember" %>
<%
UpdateStatusBO bo = new UpdateStatusBO();

String diegoStatus = bo.getStatus("diego");

String member="";
String xstatus="";
String xticket=""; 
String xcomments="";


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Daily Status Report</title>


<style>


textarea {
    width: 20em;
    height: 4em;
}

td {
 text-align: center;
}

</style>
<script>
<script>
var numid=0;
function add(id, name){
   element = document.getElementById(id+'-l1');
   element.innerHTML = element.innerHTML + "<li><input id='cesar-input-"+(++numid)+"'></li>";
}



</script>

</script>
</head>
<body>


<table id="my-table" border="1" width="100%" cellpadding="0" cellspacing="0">
<tr><th colspan="4">IDS - Omega Daily Status</th></tr>
<tr><th colspan="4">09/11/2016</th></tr>
<tr><th>Developer</th><th>Status(*)</th><th>Ticket#</th><th>Comments</th></tr>
<!-- EVS Corporates -->
<tr><td>Diego Hidalgo</td><% member="dr-diego"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Ricardo Aguero</td><% member="dr-ricardo"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Carlos Solano</td><% member="dr-carlos"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>David Escalante</td><% member="dr-david"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Erick Chavarria</td><% member="dr-erick"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Sofia Prado</td><% member="dr-sofia"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Cesar Vezga</td><% member="dr-cesar"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Manuel Varela</td><% member="dr-manuel"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td>Meenu Juneja</td><% member="dr-meenu"; %><%@include file='dr-tmpl.jsp'%></tr>
<tr><td colspan="11">&nbsp;</tr>

</table>

</body>
</html>