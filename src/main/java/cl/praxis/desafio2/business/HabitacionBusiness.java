package cl.praxis.desafio2.business;

import cl.praxis.desafio2.model.Habitacion;

import java.util.ArrayList;
import java.util.List;

public class HabitacionBusiness {

    ArrayList<Habitacion> listaHabitaciones = new ArrayList<>();
    public List<Habitacion> getHabitaciones() {
        Habitacion habitacion1 = new Habitacion();
        habitacion1.setId(1);
        habitacion1.setName("Single");
        habitacion1.setDescription("Habitación para un pasajero, cuenta con todas las comodidades de un hotel 5 estrellas");
        habitacion1.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/470212846.jpg?k=2fe10f7beccad9aace9e60e4cd97aeae0c853053b658f69f09765249f3508510&o=&hp=1");
        habitacion1.setPrize(120000);
        habitacion1.setRooms(3);
        habitacion1.setFootage(26);

        Habitacion habitacion2 = new Habitacion();
        habitacion2.setId(2);
        habitacion2.setName("Double");
        habitacion2.setDescription("Habitación doble, cuenta con todas las comodidades de un hotel 5 estrellas");
        habitacion2.setImage("https://cf.bstatic.com/xdata/images/hotel/max1024x768/470213164.jpg?k=4685d4ebac1d6d4a8c8890b2259a1255d8090a261e3c7023569dc377d7f17135&o=&hp=1");
        habitacion2.setPrize(150000);
        habitacion2.setRooms(2);
        habitacion2.setFootage(24);

        Habitacion habitacion3 = new Habitacion();
        habitacion3.setId(3);
        habitacion3.setName("2 Camas");
        habitacion3.setDescription("Habitación para 2 pasajeros, cuenta con todas las comodidades de un hotel 5 estrellas");
        habitacion3.setImage("https://cf.bstatic.com/xdata/images/hotel/max1280x900/470189179.jpg?k=cc9760b72f6dd6467cee506361855df1c01a03c0440d46354e613505ca2718e4&o=&hp=1");
        habitacion3.setPrize(110000);
        habitacion3.setRooms(3);
        habitacion3.setFootage(22);

        Habitacion habitacion4 = new Habitacion();
        habitacion4.setId(4);
        habitacion4.setName("Double premium");
        habitacion4.setDescription("Habitación cama matrimonial premium, cuenta con todas las comodidades de un hotel 5 estrellas");
        habitacion4.setImage("https://cf.bstatic.com/xdata/images/hotel/max1280x900/470194367.jpg?k=f524894e1948bf192a336f69385fa12709252c616c671af5a8bf576bca7943eb&o=&hp=1");
        habitacion4.setPrize(150000);
        habitacion4.setRooms(2);
        habitacion4.setFootage(30);

        listaHabitaciones.add(habitacion1);
        listaHabitaciones.add(habitacion2);
        listaHabitaciones.add(habitacion3);
        listaHabitaciones.add(habitacion4);

        return listaHabitaciones;
    }

    public int availableRooms() {
        int totalRooms = 0;
        for(Habitacion habitacion : listaHabitaciones) {
            totalRooms += habitacion.getRooms();
        }

        return totalRooms;
    }

    public int amountPaid(int estadia, Habitacion habitacion) {
        int amount = estadia * habitacion.getPrize();

        return amount;
    }

}
