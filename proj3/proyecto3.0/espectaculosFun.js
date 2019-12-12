window.onload = function () {
    var btn = document.getElementById("boton");
    var boxnens = document.getElementById("nens");
    var n1 =boxnens.options[boxnens.selectedIndex].value;
    var boxadultos = document.getElementById("adultos");
    var  a1= boxadultos.options[boxadultos.selectedIndex].value;
    var  a1= boxadultos.options[boxadultos.selectedIndex].value;
    var recom1 = document.getElementById("rec1");
    var recom2 = document.getElementById("rec2");
    //var recom3 = document.getElementById("rec3");
    //var recom4 = document.getElementById("rec4");
    
    
    

    
    
    btn.addEventListener("click", function() {


        if (boxadultos.options[boxadultos.selectedIndex].value > 0 && boxnens.options[boxnens.selectedIndex].value > 0) {

            recom2.style.display = "hidden";
            //recom4.style.display = "hidden";
            recom1.style.display = "block";
            //recom3.style.display = "block";
        }
        
        if (boxadultos.options[boxadultos.selectedIndex].value > 0 && boxnens.options[boxnens.selectedIndex].value == 0){
           
            recom1.style.display = "hidden";
            //recom3.style.display = "hidden";   
               
            recom2.style.display = "block";
            //recom4.style.display = "block";
        }
        

    }, false);







}
