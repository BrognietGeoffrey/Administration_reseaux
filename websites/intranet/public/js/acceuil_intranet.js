function insertToolsTable(array){

  let tableContent = "<tr> <th> Prénom </th> <th> Nom </th> </tr>";

  for(let i = 0 ; i< array.length ; i++){
    tableContent+= "<tr> <td>" + array[i].tool_name + "</td> <td>" + array[i].tool_version + "</td> </tr>";
  }

  document.getElementById("toolsList").innerHTML = tableContent;
}

function getAllTools(){
	let xhttp = new XMLHttpRequest();

  console.log("run");
	xhttp.onreadystatechange = function() {
         if (this.readyState == 4 && this.status == 200) {
        	let returnValues = JSON.parse(this.responseText);

					insertToolsTable(returnValues);
        }
	};

	xhttp.open("GET", "http://"+ DOMAIN_IP +"/api/tools", true);
  xhttp.send();
}
