/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Lesly Samaritano Ayala
 */
public class Supervisor extends Trabajador{
    private int nivel;

    public Supervisor() {
        this.nivel = 0;
    }

    //metodos heredados

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
    
}
