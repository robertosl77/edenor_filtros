package ad;

import java.util.ArrayList;
import java.util.Properties;
import javax.naming.AuthenticationException;
import javax.naming.Context;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;

/**
 *
 * @author rsleiva
 */
public class AD {
    
    private DirContext connection;
    private SearchResult searchResult= null; 

    public DirContext getConnection() {
        return connection;
    }

    public ArrayList<String> getAllUsers() throws NamingException{
        String searchBase="ou=Edificios";
        String searchFilter;
        searchFilter = "(|"
                + "(memberOf=CN=APP_GELEC_SUPERVISOR,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + "(memberOf=CN=APP_GELEC_CONSULTA,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + "(memberOf=CN=APP_GELEC_ADMINISTRADOR,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + ")";
        String[] reqAtt= {"cn"};
        SearchControls controls = new SearchControls();
        controls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        controls.setReturningAttributes(reqAtt);
        
        NamingEnumeration users = 
                connection.search(
                        searchBase, 
                        searchFilter,
                        controls);

        ArrayList<String> usuario= new ArrayList<>();        
        
        while (users.hasMore()) {
            SearchResult result = (SearchResult) users.next();
            Attributes attr= result.getAttributes();
            usuario.add(attr.get("cn").toString());
            System.out.println(attr.get("cn"));
        }
        return usuario;
    }

    public void getAllMembers() throws NamingException{
        String searchBase="ou=Edificios";
        String searchFilter;
        searchFilter = "(|"
                + "(memberOf=CN=APP_GELEC_SUPERVISOR,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + "(memberOf=CN=APP_GELEC_CONSULTA,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + "(memberOf=CN=APP_GELEC_ADMINISTRADOR,OU=GELEC,OU=FIM-SG,OU=Grupos,DC=pro,DC=edenor)"
                + ")";
        String[] reqAtt= {"cn", "memberOf"};
        SearchControls controls = new SearchControls();
        controls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        controls.setReturningAttributes(reqAtt);

        NamingEnumeration users = 
                connection.search(
                        searchBase, 
                        searchFilter,
                        controls);

        SearchResult result= null;

        while (users.hasMore()) {
            result = (SearchResult) users.next();
            Attributes attr= result.getAttributes();

            // Obtener el nombre común (CN) del usuario
            String cn = (String) attr.get("cn").get();
            System.out.println("Usuario: " + cn);

            // Obtener los grupos a los que pertenece el usuario
            Attribute memberOfAttr = attr.get("memberOf");
            if (memberOfAttr != null) {
                NamingEnumeration<?> groups = memberOfAttr.getAll();
                while (groups.hasMore()) {
                    String groupName = (String) groups.next();
                    System.out.println("Grupo: " + groupName);
                }
            }
        }
    }

    public void configuracionLDAP_QA(){
        Properties env = new Properties();
        /*
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://192.168.146.214:389");
        env.put(Context.SECURITY_PRINCIPAL,"CN=SVC_consulta_ot,OU=Cuentas de Servicio,DC=qa,DC=edenor"); //usuario ldap
        env.put(Context.SECURITY_CREDENTIALS,"edenor2020");
        */
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://192.168.145.50:389/DC=pro,DC=edenor");
        env.put(Context.SECURITY_PRINCIPAL,"CN=SVC_consulta_ot,OU=Cuentas de Servicio,DC=pro,DC=edenor"); //usuario ldap
        env.put(Context.SECURITY_CREDENTIALS,"Edenor2010");
        try {
            connection = new InitialDirContext(env);
        } catch (AuthenticationException ex) {
            System.out.println(
                    ex.getMessage());
            connection=null;
        } catch (NamingException e) {
            connection=null;
        }
    }
}
