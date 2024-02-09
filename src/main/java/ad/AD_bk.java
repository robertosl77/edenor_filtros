package ad;

import java.util.Collection;
import java.util.Hashtable;
import java.util.Enumeration;
import java.util.Vector;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.NamingEnumeration;

public class AD_bk{

  	DirContext dirCtx = null;
	String host= null;
	String INIT_CTX = "com.sun.jndi.ldap.LdapCtxFactory";
	SearchResult searchResult= null; 

	public AD_bk(String host, String principal, String credentials) throws Exception {

		this.host= host;
  
		Hashtable env = new Hashtable(11);
		env.put(Context.INITIAL_CONTEXT_FACTORY, INIT_CTX);
                env.put(Context.PROVIDER_URL,            host);
		env.put(Context.SECURITY_PRINCIPAL, principal);
		env.put(Context.SECURITY_CREDENTIALS, credentials);
  
		try{                
			dirCtx = new InitialDirContext(env);

		}catch(Exception e){
			throw e;
		}
	}

/** This method is used to search an entry in LDAP. Ejemplo:
  *
  * 	if (getSearchResult(searchFilter, searchBase)) {            
  *			System.out.println("** FOUND ** ");         
  *		}else{
  *			System.out.println("** NOT FOUND ** ");        
  *		}
  *
  * @param dirContext 
  * @param searchFilter 
  * @param searchBase 
  * @return {@link Boolean} 
  * @throws NamingException 
  */

public boolean getSearchResult(String searchFilter,String searchBase) throws Exception{
	try{                
		SearchControls constraints = new SearchControls();
		constraints.setSearchScope(SearchControls.SUBTREE_SCOPE);
		NamingEnumeration searchResults = dirCtx.search(searchBase,searchFilter,constraints);
		if(searchResults != null && searchResults.hasMore()){        
			searchResult = (SearchResult)searchResults.next();
			return true;
		}    
		return false;
	}catch(Exception e){
		throw e;
	}
}

/** 
 * Devuelve valores de atributos
 * @param attribute id 
 * @return Vector of attribute values
 * @throws NamingException 
 */
public Vector getAttribute(String id) throws Exception{
	try{
		Attributes attributes= searchResult.getAttributes();    
		Vector v= new Vector();
	
		if (attributes != null) {
			for (NamingEnumeration enums = attributes.getAll(); enums.hasMore();) {
				Attribute attribute = (Attribute)enums.next();
				if(attribute.getID().equals(id)){
					for (NamingEnumeration namingEnu = attribute.getAll();namingEnu.hasMore();)
						v.add(namingEnu.next());        
					break;
				}
			}
		}

		return v;
	}catch(Exception e){
		throw e;
	}

}

public DirContext geDirContext(){
	return dirCtx;
}


}

