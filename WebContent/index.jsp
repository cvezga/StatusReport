<%@page import="com.gft.statusreport.ProjectMember"%>
<%@ page import="com.gft.statusreport.UpdateStatusBO" %>
<%@ page import="com.gft.statusreport.ProjectMember" %>
<%
UpdateStatusBO bo = new UpdateStatusBO();

String diegoStatus = bo.getStatus("diego");

String member="";
String xstatus="";



%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Weekly Status Report</title>


<style>


textarea {
    width: 40em;
    height: 4em;
}

td {
 text-align: center;
}

</style>

</head>
<body>

<h1 style="background-color:#006666; text-align:center">IDS - Costa Rica Staffing / Allocation Update (Sept. 12, 2016)</h1>


<table border="1" width="100%" cellpadding="0" cellspacing="0">
<tr bgcolor="#0099cc"><th>Project</th><th>Team Member</th><th>Role</th><th>Dec, 15</th><th>July</th><th>Aug.</th><th>Sept.</th><th>Oct.</th><th>Nov.</th><th>Dec.</th><th>Comments/Update</th></tr>
<!-- EVS Corporates -->
<tr><td rowspan="4">EVS Corporates</td>
<td>Diego Hidalgo</td><td>Sr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td width="40%"><% member="diego"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Erick Chavarria</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="erick"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Ricardo Aguero</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="ricardo"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Sofia Prado</td><td> Jr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="sofia"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td colspan="11">&nbsp;</tr>

<!-- EVS Municipals -->
<tr><td rowspan="3">EVS Corporates</td>
<td>Felipe Ripoll</td><td>Sr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="felipe"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Alvaro Cascante</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="alvaro"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Max Rojas</td><td>Dev</td><td  bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="max"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td colspan="11">&nbsp;</tr>

<!-- Vantage / UI -->
<!-- Vantage / UI 2016 -->
<tr><td rowspan="4">Vantage / UI <br> Vantage / UI 2016</td>
<td>Mario Leon</td><td>Sr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="mario"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>David Bermudez</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="davidb"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Jonathan Jara</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="jonathan"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Dickson Gonzalez</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="dickson"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td colspan="11">&nbsp;</tr>

<!-- APEX -->
<tr><td rowspan="2">APEX</td>
<td>Anthony Serrano</td><td>Jr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="anthony"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Francisco Milanes</td><td>Jr. Dev</td><td  bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="francisco"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td colspan="11">&nbsp;</tr>

<!-- Omega BAU / Tech -->
<tr><td rowspan="2">Omega BAU/TECH</td>
<td>Carlos Solano</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="carlos"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>David Escalante</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="davide"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td colspan="11">&nbsp;</tr>

<!-- EVS Corporates 2016 (Decomission Project) -->
<tr><td rowspan="3">EVS Corporates 2016<br>(Decomission Project)</td>
<td>Cesar Vezga</td><td>Sr. Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="cesar"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Meenu Juneja</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="meenu"; %><%@include file='status-tmpl.jsp'%></td></tr>
<tr><td>Manuel Varela</td><td>Dev</td><td bgcolor="green"></td><td></td><td></td><td></td><td></td><td></td><td align="center"><img alt="" src="image/green-bullet.png"></td><td><%  member="manuel"; %><%@include file='status-tmpl.jsp'%></td></tr>

</table>

</body>
</html>