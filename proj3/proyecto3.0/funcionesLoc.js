var n=1;

window.onload = function(){
    
    if (localStorage.nombre) {
           
            localStorage.n++;
            document.getElementById("saludo").innerHTML="Hola " + localStorage.nombre + " has estado " + localStorage.n + " veces";
    } 
    
    boton.addEventListener ("click",function(){
       
            localStorage.nombre=document.getElementById("nombre").value;
            localStorage.n = 1;
            document.getElementById("saludo").innerHTML="Hola " + localStorage.nombre + " has estado " + localStorage.n + " veces";        
    },false);
    
    }
