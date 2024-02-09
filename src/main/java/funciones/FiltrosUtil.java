package funciones;

import dto.FiltrosDTO;
import dto.DocumentosDTO;
import java.util.ArrayList;

/**
 *
 * @author robertosl
 */
public class FiltrosUtil {
    
    public ArrayList<FiltrosDTO> generarListaFiltros() {
        ArrayList<FiltrosDTO> filtrosList = new ArrayList<>();
        
        FiltrosDTO f1 = new FiltrosDTO();
        f1.setId(1);
        f1.setProceso("Ingreso MT General");
        f1.setInfo("Este filtro es general no se recomienda modificar!.");
        f1.setPendiente(true);
        f1.setTratamiento(true);
        f1.setDespachado(true);
        f1.setAnomalia(true);
        f1.setCerrado(false);
        f1.setCancelado(false);
        filtrosList.add(f1);

        FiltrosDTO f2 = new FiltrosDTO();
        f2.setId(2);
        f2.setProceso("Ingreso Forzado MT");
        f2.setInfo("Este filtro se encarga de los Estados en los Forzados MT.");
        f2.setPendiente(false);
        f2.setTratamiento(true);
        f2.setDespachado(true);
        f2.setAnomalia(true);
        f2.setCerrado(false);
        f2.setCancelado(false);
        filtrosList.add(f2);

        FiltrosDTO f3 = new FiltrosDTO();
        f3.setId(3);
        f3.setProceso("Ingreso Programado MT");
        f3.setInfo("Este filtro se encarga de los Estados en los Programados MT.");
        f3.setPendiente(false);
        f3.setTratamiento(true);
        f3.setDespachado(true);
        f3.setAnomalia(true);
        f3.setCerrado(false);
        f3.setCancelado(false);
        filtrosList.add(f3);

        return filtrosList;
    }

    public ArrayList<DocumentosDTO> generarListaDocumentos() {
        ArrayList<DocumentosDTO> documentos = new ArrayList<>();
        
        DocumentosDTO s= new DocumentosDTO();
        s.setId(1);
        s.setNro_documento("D-24-02-000001");
        s.setCorte("Forzado");
        s.setEstado("Pendiente");
        s.setAfectaciones(180);
        documentos.add(s);

        s= new DocumentosDTO();
        s.setId(1);
        s.setNro_documento("D-24-02-000002");
        s.setCorte("Forzado");
        s.setEstado("Pendiente");
        s.setAfectaciones(1538);
        documentos.add(s);

        s= new DocumentosDTO();
        s.setId(1);
        s.setNro_documento("D-24-02-000003");
        s.setCorte("Forzado");
        s.setEstado("En Tratamiento");
        s.setAfectaciones(301);
        documentos.add(s);

        s= new DocumentosDTO();
        s.setId(1);
        s.setNro_documento("D-24-02-000004");
        s.setCorte("Forzado");
        s.setEstado("Despachado");
        s.setAfectaciones(10);
        documentos.add(s);


        return documentos;
    }
    
}

