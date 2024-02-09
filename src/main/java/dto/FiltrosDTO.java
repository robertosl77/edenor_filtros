package dto;

/**
 *
 * @author robertosl
 */
public class FiltrosDTO {
    
    private int id;
    private String proceso;
    private String info;
    private boolean pendiente;
    private boolean tratamiento;
    private boolean despachado;
    private boolean anomalia;
    private boolean cerrado;
    private boolean cancelado;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProceso() {
        return proceso;
    }

    public void setProceso(String proceso) {
        this.proceso = proceso;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public boolean isPendiente() {
        return pendiente;
    }

    public void setPendiente(boolean pendien) {
        this.pendiente = pendien;
    }

    public boolean isTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(boolean tratami) {
        this.tratamiento = tratami;
    }

    public boolean isDespachado() {
        return despachado;
    }

    public void setDespachado(boolean despach) {
        this.despachado = despach;
    }

    public boolean isAnomalia() {
        return anomalia;
    }

    public void setAnomalia(boolean anomali) {
        this.anomalia = anomali;
    }

    public boolean isCerrado() {
        return cerrado;
    }

    public void setCerrado(boolean cerrado) {
        this.cerrado = cerrado;
    }

    public boolean isCancelado() {
        return cancelado;
    }

    public void setCancelado(boolean cancela) {
        this.cancelado = cancela;
    }

   
    
}
