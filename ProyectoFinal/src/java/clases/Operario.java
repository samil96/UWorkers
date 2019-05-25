
package clases;
//import entidad.Trabajador;
/**
 *
 * @author Lesly Samaritano Ayala
 */
public class Operario extends Trabajador{

    public Operario() {
    }

    @Override
    public double calcular_dias_trabajadas() {
        return super.calcular_dias_trabajadas(); 
    }

    @Override
    public double calcular_horas_extras() {
        return super.calcular_horas_extras(); 
    }

    @Override
    public double calcular_horas_trabajadas() {
        return super.calcular_horas_trabajadas(); 
    }

    public int calcular_horas_aumentar_proceso() {
        return 0; 
    }
    
}
