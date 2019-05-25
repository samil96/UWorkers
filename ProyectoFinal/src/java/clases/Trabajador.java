package clases;

/**
 *
 * @author Lesly Samaritano Ayala
 */
public class Trabajador {

    private int cod_trabajador;
    private String area;

    //Variables Para los calculos
    private int HORASXDIA = 8;

    //creando el objeto pedido
    Pedido pedido = new Pedido();

    public Trabajador() {
        cod_trabajador = 0;
        area = "";
    }

    public int getCod_trabajador() {
        return cod_trabajador;
    }

    public void setCod_trabajador(int cod_trabajador) {
        this.cod_trabajador = cod_trabajador;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    //metodos 
    public double calcular_dias_trabajadas() {
        double dias = pedido.calcularDiasRequeridas();
        return dias;

    }

    // hallar las horas totales segun el pedido
    // ht son las horas totales
    public double calcular_horas_trabajadas() {
        double ht = calcular_dias_trabajadas()*HORASXDIA;
        double total = ht + calcular_horas_extras();
        return ht;
    }

    public double calcular_horas_extras() {
        double he = pedido.horasExtraTotal();
        double total = he / 88;
        return total;
    }

    public double hallarPago() {
        double pago = 0;
        pago = ((calcular_dias_trabajadas() * HORASXDIA) * 31) + ((0.05 * 3.875) * calcular_horas_extras());
        return pago;
    }

}
