<%  xstatus=bo.getStatus(member); %>
<form method="post" action="UpdateStatusBO.bo"><textarea name="status" ><%=xstatus%></textarea><button type="submit" name="member" value="<%=member%>">Update</button></form>