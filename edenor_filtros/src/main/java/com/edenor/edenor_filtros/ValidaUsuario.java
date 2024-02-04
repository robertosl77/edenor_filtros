package com.edenor.edenor_filtros;

/**
 *
 * @author robertosl
 */
public class ValidaUsuario {

    public static boolean validaUsuario(String usuario, String contrasena) {
        return usuario.equals("rsleiva") && contrasena.equals("123");
    }
    
}
