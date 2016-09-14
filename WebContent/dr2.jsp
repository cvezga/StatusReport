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
var numid=0;
function add(id, name){
   element = document.getElementById(id+'-l1');
   element.innerHTML = element.innerHTML + "<li><input id='cesar-input-"+(++numid)+"'></li>";
}

var rownum=0;
function addRow(id, name){
	if(rownum++%2==0){
		bgcolor = "bgcolor='#aaaaaa'";
	}else{
		bgcolor="";
	}
	
	var templ = '<form id="%id%-form" method="post" action="UpdateDR">' 
	+'<tr '+bgcolor+'><td>%name%</td>'
	+'<td id="%id%-status-cell">'
	+'<select id="status">'
	+'  <option value="working">Working On</option>'
	+'  <option value="analyzing">Analyzing</option>'
	+'  <option value="ondev">On Development</option>'
	+'  <option value="devcomp">Dev Complete</option>'
	+'  <option value="bugfix">Bug Fix</option>'
	+'</select>'
	+'</td>'
	+'<td id="%id%-ticket-cell"><input id="ticket"></td>'
	+'<td id="%id%-comment-cell"><input id="comment" size="100"></td>'
	+'<td><input type="button" onClick="addEntry(\'%id%\')" value="+"><br><input type="submit" value="Save"></td></tr>'
	+'</form>';
	var newrow = templ.replace('%name%',name).replace(/%id%/g,id);
   table = document.getElementById('my-table');
   table.innerHTML = table.innerHTML + newrow;

}

function addEntry(id){
	var cell = document.getElementById(id+'-status-cell');
	
	var row = cell.insertRow();
	cell.innerHTML = cell.innerHTML + '<br>'
	+'<select id="status">'
	+'  <option value="working">Working On</option>'
	+'  <option value="analyzing">Analyzing</option>'
	+'  <option value="ondev">On Development</option>'
	+'  <option value="devcomp">Dev Complete</option>'
	+'  <option value="bugfix">Bug Fix</option>'
	+'</select>';
	
	cell = document.getElementById(id+'-ticket-cell');
	cell.innerHTML = cell.innerHTML + '<br><input id="ticket">';
	
	cell = document.getElementById(id+'-comment-cell');
	cell.innerHTML = cell.innerHTML + '<br><input id="comment" size="100">';
	
}

</script>


</head>
<body>

<form method="post" action="UpdateDR"></form>

<table id="my-table" border="1" width="100%" cellpadding="0" cellspacing="0">
<tr><th colspan="4">IDS - Omega Daily Status</th></tr>
<tr><th colspan="4"><input value="09/11/2016"></th></tr>
<tr bgcolor="black" style="color:#ffffff"><th>Developer</th><th>Status(*)</th><th>Ticket#</th><th>Comments</th></tr>
<!-- ADD ROW PLACE -->
</table>
<script>
addRow('dr-diego','Diego Hidalgo');
addRow('dr-ricardo','Ricardo Aguero');
addRow('dr-carlos','Carlos Solano');
addRow('dr-david','David Escalante');
addRow('dr-erick','Erick Chavarria');
addRow('dr-sofia','Sofia Prado');
addRow('dr-cesar','Cesar Vezga');
addRow('dr-manuel','Manuel Varela');
addRow('dr-meenu','Meenu Juneja');
</script>


</body>
</html>