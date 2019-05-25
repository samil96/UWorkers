package clases;

/**
 *
 * @author Lesly
 */
public class Proceso {
    private int codArea;
    private String nombreArea;

    public Proceso() {
        codArea = 0;
        nombreArea = "";  
    }

    public int getCodArea() {
        return codArea;
    }

    public void setCodArea(int codArea) {
        this.codArea = codArea;
    }

    public String getNombreArea() {
        return nombreArea;
    }

    public void setNombreArea(String nombreArea) {
        this.nombreArea = nombreArea;
    }

}
