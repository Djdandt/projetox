/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(window).on('scroll', function () {
    var scroll = $(window).scrollTop();
    // o valor 400 é a altura do scroll para iniciar o efeito
    if (scroll > 350) {
        $('#rolagem').addClass('aparece');
    } else {
        $('#rolagem').removeClass('aparece');
    }
});

$(window).on('scroll', function () {
    var scroll = $(window).scrollTop();
    // o valor 400 é a altura do scroll para iniciar o efeito
    if (scroll > 100) {
        $('#logo').addClass('some');
    } else {
        $('#logo').removeClass('some');
    }
});

function valida_form() {
    if ((document.getElementById("nome").value == "") || (document.getElementById("email").value == "") || (document.getElementById("telefone").value == "") || (document.getElementById("celular").value == "")) {
        alert('Por favor, preencha todos os campos.');
        history.go(0);
    } else {
        //alert('Solicitação feita com sucesso! Em algumas horas retornaremos contato.');
        //history.go(0);
    }
}
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function () {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    }
}
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";

}