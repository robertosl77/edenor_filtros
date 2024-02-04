document.addEventListener('DOMContentLoaded', function () {
    // Obtiene los botones "Cancelar", "Simular" y "Confirmar"
    const cancelarButton = document.getElementById('cancelar-button');
    const simularButton = document.getElementById('simular-button');
    const confirmarButton = document.getElementById('confirmar-button');

    // Función para cambiar el color al pasar el mouse
    function cambiarColorAlPasarMouse(boton) {
        boton.addEventListener('mouseover', () => {
            boton.style.backgroundColor = '#8cff00'; // Cambia el color al pasar el mouse
        });

        boton.addEventListener('mouseout', () => {
            boton.style.backgroundColor = '#0078d4'; // Restaura el color original al salir del mouse
        });
    }

    // Aplica la función a los botones específicos
    cambiarColorAlPasarMouse(cancelarButton);
    cambiarColorAlPasarMouse(simularButton);
    cambiarColorAlPasarMouse(confirmarButton);
});


