package dto;

/**
 *
 * @author robertosl
 */
public class DocumentosDTO {
    
    private String nro_documento;
    private int id;
    private String corte;
    private String estado;
    private int afectaciones;

    public String getNro_documento() {
        return nro_documento;
    }

    public void setNro_documento(String nro_documento) {
        this.nro_documento = nro_documento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCorte() {
        return corte;
    }

    public void setCorte(String corte) {
        this.corte = corte;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getAfectaciones() {
        return afectaciones;
    }

    public void setAfectaciones(int afectaciones) {
        this.afectaciones = afectaciones;
    }
    
    
}
