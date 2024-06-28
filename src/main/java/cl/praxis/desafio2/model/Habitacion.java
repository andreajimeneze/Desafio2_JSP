package cl.praxis.desafio2.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Habitacion {
    private int id;
    private String name;
    private String description;
    private String image;
    private int prize;
    private int rooms;
    private int footage;

}
