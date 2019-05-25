package clases;

import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Lesly
 */
public class Pedido {

    private int codPedido;
    private int cantCajas;
    private Date fechInicio;
    //Variables para hacer los calculos
    private Date fechEntrega;

    public Pedido() {
        codPedido = 0;
        cantCajas = 0;
        fechInicio = ParseFecha("");
    }

    public int getCodPedido() {
        return codPedido;
    }

    public void setCodPedido(int codPedido) {
        this.codPedido = codPedido;
    }

    public int getCantCajas() {
        return cantCajas;
    }

    public void setCantCajas(int cantCajas) {
        this.cantCajas = cantCajas;
    }

    public Date getFechInicio() {
        return fechInicio;
    }

    public void setFechInicio(Date fechInicio) {
        this.fechInicio = fechInicio;
    }

    public Date getFechEntrega() {
        fechEntrega = diaDeEntrega();
        return fechEntrega;
    }

    public void setFechEntrega(Date fechEntrega) {
        this.fechEntrega = fechEntrega;
    }

    //METODOS
    // 1. Convertir fecha
    public static Date ParseFecha(String fecha) {
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
        Date fechaDate = null;
        try {
            fechaDate = formato.parse(fecha);
        } catch (ParseException ex) {
            System.out.println(ex);
        }
        return fechaDate;
    }

    //Para hallar la varianza primero hallamos la suma de X-U
    // Dònde la varianza es la variabilidad de cajas que realizan los operarios en un dìa
    //y la U es la media poblacional
    // x1= cantd de cajas en el recepciòn
    // x2= cantd de cajas en el selecciòn
    // x3= cantd de cajas en el empaquetado
    // x4= cantd de cajas en el pesado
    public double sumaXU() {
        int x1 = 160 * 3, x2 = 480 * 40, x3 = 480 * 40, x4 = 480 * 5;
        int u = 10320;
        double sum = 0;
        sum = (Math.pow((x1 - u), 2) + Math.pow((x2 - u), 2) + Math.pow((x3 - u), 2) + Math.pow((x4 - u), 2));
        return sum;
    }

    //hallar la varianza poblacional de las cajas que se genera en recepciòn, selecciòn, empaquetado y pesado
    // con la cantidad de operarios que hay actualmente
    public double varianzaPoblacional() {
        double var = 0, sum = 0;
        sum = sumaXU();
        int N = 2400;
        var = sum / N;
        return var;
    }

    //Hallar la cantidad minima de cajas que se puede obtener con actualmente esa cantidad de operarios.
    // z=1.96  porque se usara con el 5% de error y 95% de confiabilidad
    //Dònde de n sera el tamaño de cantd de cajas minimas que se puede realizar 
    // E es el error con el 0.05   y f es la fraccion muestral 
    public int tamañoCajas() {
        int n = 0;
        double z = 1.96, E = 0.05, f = 3000, var = 0;
        var = varianzaPoblacional();
        n = (int) (((Math.pow(z, 2)) * var) / (Math.pow(E, 2)));
        while (f >= 0.05) {
            f = n / 2400;
            n = (int) Math.ceil(((n) / (1 + f)));
        }
        return n;
    }

    // si la cantidad de cajas pedidas es menor a la cantidad minima que se puede obtener, entonces se puede acabar
    // 1 dìa de trabajo pero menos horas. Si es mayor la catidad de cajas solicitadas se calcula los dìas necesarios.
    public double calcularDiasRequeridas() {
        double dias = 0.0;
        try {
            if (getCantCajas() >= tamañoCajas()) {
                dias = (getCantCajas() / 2400);
            } else {
                dias = 1;
            }
        } catch (Exception e) {
        }
        return dias;
    }

    //Se halla las horas que se requieren para finalizar con la solicitud de cajas de frutas
    public double calcularHorasRequerida() {
        double min = 0.0, horas = 0.0, cajas;
        cajas = getCantCajas();
        min = (getCantCajas() * 480) / tamañoCajas();
        horas = min / 60;
        return horas;
    }

    //Las horas extras se dara cuando en el dìa se haga mayor de 8 horas.
    // hr es las horas requeridas por el pedido
    // dr los dias requeridos
    public double horasExtraTotal() {
        double he = 0.0, dr, hr;

        hr = calcularHorasRequerida();
        dr = calcularDiasRequeridas();
        if (hr > 8) {
            he = ((hr) - (dr * 8));
        } else {
            he = 0;
        }
        return he;
    }

    // f es la variable local donde se almacenara la fecha de entrega
    public Date diaDeEntrega() {
        Date f = null;
        int dias = (int) calcularDiasRequeridas();
        Date fecha = getFechInicio();
        if (dias > 0);
        Calendar calendario = Calendar.getInstance();
        calendario.setTime(fecha);
        calendario.add(Calendar.DAY_OF_YEAR, dias);
        f = calendario.getTime();
        return f;
    }
    
    //hallamaos las horas aumentar
        public double calcular_horas_aumentar() {
        double he = horasExtraTotal();
        double total = he / 88;
        return total;
    }
}
