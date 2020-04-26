DOMAIN_IP = "localhost:8080";

function search() {
  document.getElementById("search").style.display="flex";
  document.getElementById("form").style.display="none";
  getAllVendors();
}

function addForm(){
  document.getElementById("form").style.display="flex";
  document.getElementById("search").style.display="none";
}

function insertVendorsTable(array){

  let tableContent = "<tr> <th> Prénom </th> <th> Nom </th> </tr>";

  for(let i = 0 ; i< array.length ; i++){
    tableContent+= "<tr> <td>" + array[i].first_name + "</td> <td>" + array[i].last_name + "</td> </tr>";
  }

  document.getElementById("searchTable").innerHTML = tableContent;
}

function getAllVendors(){
	let xhttp = new XMLHttpRequest();

	xhttp.onreadystatechange = function() {
         if (this.readyState == 4 && this.status == 200) {
        	let returnValues = JSON.parse(this.responseText);

					insertVendorsTable(returnValues);
        }
	};

	xhttp.open("GET", "http://"+ DOMAIN_IP +"/api/vendors", true);
  xhttp.send();
}

function sendForm(){
  let firstName = document.getElementById("fname").value;
  let lastName = document.getElementById("lname").value;

  let xhttp = new XMLHttpRequest();

	xhttp.onreadystatechange = function() {
         if (this.readyState == 4 && this.status == 200) {

					document.getElementById("returnMessage").innerHTML = this.responseText;
        }
	};

	xhttp.open("POST", "http://"+ DOMAIN_IP +"/api/add_vendor?first_name="+firstName+"&last_name="+lastName, true);
  xhttp.send();
}
