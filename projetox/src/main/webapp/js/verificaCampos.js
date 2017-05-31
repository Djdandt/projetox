/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validar() {
//    var nomeProduto = document.getElementById("nomeProduto");
    var email = document.getElementById("email");

//    if(nomeProduto === "") {
//        alert('Por favor, não deixa o campo em branco');
//        nomeProduto.focus;
//        return false;
//    }

    if (email.value === "" || email.value.indexOf('@') === -1 || email.value.indexOf('.') === -1) {
        alert('Por favor, digite um email válido');
        email.focus();
        return false;
    }


}