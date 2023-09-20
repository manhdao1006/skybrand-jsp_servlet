/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
var check = 1;
var ulheight = document.getElementById("management_books_clone").offsetHeight;
document.getElementById("management_books").onclick = function(){
    if (check == 1) {
        console.log(ulheight);
        document.getElementById("type_books").style.height = ulheight+"px";
        document.getElementById("arrow").classList.add("fa-chevron-up");
        document.getElementById("arrow").classList.remove("fa-chevron-down");
        check = 0;

    }else {
        document.getElementById("type_books").style.height = "0px";
        document.getElementById("arrow").classList.add("fa-chevron-down");
        document.getElementById("arrow").classList.remove("fa-chevron-up");
        check = 1;
    }
}

