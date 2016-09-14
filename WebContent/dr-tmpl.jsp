<%  
xstatus=bo.getStatus(member); 
xticket="x"; //bo.getTicket(member); 
xcomments="y";//bo.getComments(member);
%>
<form method="post" action="UpdateDailyReportBO.bo">
<td><textarea name="status" ><%=xstatus%></textarea></td>
<td><textarea name="ticket" ><%=xticket%></textarea></td>
<td><textarea name="comments" ><%=xcomments%></textarea></td>
<td><button type="submit" name="member" value="<%=member%>">Update</button></td>

</form>