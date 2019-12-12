var band1=0;
	var band2=0;
	var precio=0;
	var codigo1=" ";
	var codigo2=" ";
	var x='0';
	var y='0';
	var i=0;
	var j=0;
	var pack=0;
	var hot1=["1","2","3","4"];
	var hot2=["5","6","7","8"];
	var hot3=["9","10","11","12"];
	var hot4=["13","14","15","16"];
	var a=0;
	var h=0;
	
	
	

function iniciar(){
	
	var id = document.getElementById('id');
	var nom = document.getElementById('nombre');
	var dir = document.getElementById('direccion');  
	var fec = document.getElementById('fecha');  
	var conf = document.getElementById('confirmar');
	var limp = document.getElementById('limpiar');
	var results= document.getElementById('resultado');
	
	var db = openDatabase("Clientes", "1.0", "Clientes Reserva", 200000);
	var createStatement = "CREATE TABLE IF NOT EXISTS Reservas (id INTEGER PRIMARY KEY AUTOINCREMENT, nom TEXT, dir TEXT, fec TEXT, pack TEXT, precio TEXT)";
	var selectAllStatement = "SELECT * FROM Reservas";
	var insertStatement = "INSERT INTO Reservas (nom, dir, fec, pack, precio) VALUES (?, ?, ?, ?, ?)";
	var deleteStatement = "DELETE FROM Reservas WHERE id=?";
	var dropStatement = "DROP TABLE Reservas";
	
	var dataset;
	
	createTable();
	
	conf.addEventListener("click", insertRecord, false);
	limp.addEventListener("click", dropTable, false);
	
	
	function onError(tx, error) {
        alert(error.message);
      }
      
     function showRecords() {
        results.innerHTML = '';
        db.transaction(function(tx) {
          tx.executeSql(selectAllStatement, [], function(tx, result) {
			dataset = result.rows;
            for (var i = 0, item = null; i < dataset.length; i++) {
              item = dataset.item(i);
              results.innerHTML += '<li>' + item['nom'] + ' , ' + item['dir'] + ' , ' + item['fec']+ ' , Pack ' + item['pack']+ ' , ' + item['precio']+ '€';
			}
          });
        });
      }
	
	function createTable() { 
        db.transaction(function(tx) {
          tx.executeSql(createStatement, [], showRecords, onError);
        });
      }
	  
	function insertRecord() {
        db.transaction(function(tx) {
          tx.executeSql(insertStatement, [nom.value, dir.value, fec.value, pack, precio], loadAndReset, onError);
        });
      }
	
	
	function loadRecord(i) {
		var item = dataset.item(i); 
			nom.value = item['nom'];
			dir.value = item['dir'];
			fec.value = item['fec'];
			id.value = item['id']; 
		  }

      function updateRecord() {
        db.transaction(function(tx) {
          tx.executeSql(updateStatement, [nom.value, dir.value, fec.value, pack, precio], loadAndReset, onError);
        }); 
      }
      
      function deleteRecord(id) {
        db.transaction(function(tx) {
          tx.executeSql(deleteStatement, [id], showRecords, onError);
        });
		resetForm();
      }
       
      function dropTable() {
        db.transaction(function(tx) {
          tx.executeSql(dropStatement, [], showRecords, onError);
        });
		resetForm();
		createTable();
      }

	 function loadAndReset(){
	 resetForm();
	 showRecords();
	 }
		
	
	function resetForm(){
		nom.value = 'Nombre y apellidos';
		dir.value = 'Calle no';
		fec.value = '';
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	var h1=document.getElementById("h1");
	var h2=document.getElementById("h2");
	var h3=document.getElementById("h3");
	var h4=document.getElementById("h4");
	
	var a1=document.getElementById("a1");
	
	var hotel=document.getElementById("hotel");
	var atraccion=document.getElementById("atraccion");
	
	
	

	if(band1==0){
	h1.addEventListener("dragstart", arrastrado1, false);
	h2.addEventListener("dragstart", arrastrado1, false);
	h3.addEventListener("dragstart", arrastrado1, false);
	h4.addEventListener("dragstart", arrastrado1, false);
	
	hotel.addEventListener("dragenter", function(e){
	e.preventDefault();
	},false);
	
	hotel.addEventListener('dragover', function(e){
	e.preventDefault(); 
	}, false);
	
	hotel.addEventListener("drop", soltado, false);
	}
	
	if(band2==0){
	a1.addEventListener("dragstart", arrastrado2, false);
	a2.addEventListener("dragstart", arrastrado2, false);
	a3.addEventListener("dragstart", arrastrado2, false);
	a4.addEventListener("dragstart", arrastrado2, false);
	
	
	atraccion.addEventListener("dragenter", function(e){
	e.preventDefault();
	},false);
	
	
	atraccion.addEventListener('dragover', function(e){
	e.preventDefault(); 
	}, false);
	
	atraccion.addEventListener("drop", soltado2, false);
	}
	
	var p=document.getElementById("precio");
	var c=document.getElementById("cancelar");
	c.addEventListener("click", function(){
		document.getElementById('hotel').innerHTML="Arrastre aquÃ­ un hotel";document.getElementById('atraccion').innerHTML="Arrastre aquÃ­ el conjunto de atracciones";
		precio=0;
		p.innerHTML=precio;
		i=0;
		j=0;
		band=0;
		document.getElementById("formulario").style.display="none";
		}, false);
		
	var res=document.getElementById("reservar");
	res.addEventListener("click", function(){
		
		pack=i[j];
		document.getElementById("formulario").style.display="block";
	}, false);
}


function arrastrado1 (e){
		
		codigo1='<img src="'+this.getAttribute('src')+' "class="imagenes2">';
		e.dataTransfer.setData("Text", codigo1);
		
		x=this.getAttribute('src');
		
		switch(x){
			case 'images/1.jpg':
				a=25;
				i=hot1;
				break;
			case 'images/2.jpg':
				a=30;
				i=hot2;
				break;
			case 'images/3.jpg':
				a=20;
				i=hot3;
				break;
			case 'images/4.jpg':
				a=27;
				i=hot4;
				break;
		}
		
}

function arrastrado2 (e){
		
		codigo2='<img src="'+this.getAttribute('src')+' "class="imagenes2">';
		e.dataTransfer.setData("Text", codigo2);
		
		y=this.getAttribute('src');
		
		switch(y){
			case 'images/5.jpg':
				h=20;
				j=0;
				break;
			case 'images/6.jpg':
				h=22;
				j=1;
				break;
			case 'images/7.jpg':
				h=28;
				j=2;
				break;
			case 'images/8.jpg':
				h=33;
				j=3;
				break;
		}
}

function soltado (e){
		e.preventDefault();
		
		if(x=='images/1.jpg' || x=='images/2.jpg' || x=='images/3.jpg' || x=='images/4.jpg'){
		
		hotel.innerHTML=e.dataTransfer.getData("Text");
		
		var p=document.getElementById("precio");
		precio=a+h;
		p.innerHTML=precio;
		band1=1;
		}
		else{
			hotel.innerHTML='Por favor, arrastre aquÃ­ un hotel.';
		}
		
		
}

function soltado2 (e){
		e.preventDefault();
		
		if(y=='images/5.jpg' || y=='images/6.jpg' || y=='images/7.jpg' || y=='images/8.jpg'){
		atraccion.innerHTML=e.dataTransfer.getData("Text");
		
		var p=document.getElementById("precio");
		precio=a+h;
		p.innerHTML=precio;
		band2=1;
		}
		else{
			atraccion.innerHTML='Por favor, arrastre aquÃ­ un conjunto de atracciones.';
		}
		
}




window.addEventListener("load", iniciar, false);




