package funciones;

import ad.AD;
import java.util.ArrayList;

/**
 *
 * @author robertosl
 */
public class ValidaUsuario {
    
    private AD ad;

    public boolean validaUsuario(String usuario, String contrasena) {
        //session.setAttribute("ads", ads);
        try {
            AD ad= new AD();
            ad.configuracionLDAP_QA();
            ArrayList<String> u= ad.getAllUsers();
            return u.contains("cn: "+usuario);
            //return usuario.equals("rsleiva") && contrasena.equals("123");
            
        } catch (Exception e) {
            return false;
        }
    }
    
}
