// timeoutScript.js

window.onload = function() {
    // Obtener el elemento de mensaje de error
    var errorMessage = document.getElementById("status-message");

    // Mostrar el mensaje de error inicialmente (si hay un error)
    if (errorMessage && errorMessage.innerText.trim() !== "") {
        errorMessage.style.display = "block";
    }

    // Establecer el tiempo de espera en milisegundos (puedes pasar este valor como parámetro)
    var tiempoEspera = (window.location.href.indexOf("login.jsp") !== -1) ? 3000 : 6000;

    // Ocultar el mensaje después del tiempo de espera
    setTimeout(function() {
        if (errorMessage) {
            errorMessage.style.display = "none";
        }
    }, tiempoEspera);
};

