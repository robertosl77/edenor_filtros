// timeoutScript.js

window.onload = function() {
    // Obtener el elemento de mensaje de error
    var errorMessage = document.getElementById("error-message");

    // Mostrar el mensaje de error inicialmente (si hay un error)
    if (errorMessage && errorMessage.innerText.trim() !== "") {
        errorMessage.style.display = "block";
    }

    // Ocultar el mensaje después de 10 segundos
    setTimeout(function() {
        if (errorMessage) {
            errorMessage.style.display = "none";
        }
    }, 3000);
};
