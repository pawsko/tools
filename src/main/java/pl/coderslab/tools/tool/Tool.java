package pl.coderslab.tools.tool;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.tools.location.Location;
import pl.coderslab.tools.manufacturer.Manufacturer;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Table(name = "tools")
public class Tool {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String model;
    @ManyToOne
    private Manufacturer manufacturer;
    private String category;
    private String type;  //electro, handy
    private String powerType; //if applicable 230, battery
    private String status; //Available, not available, damaged, in service
    private int rating; //included accuracy, rate of wear and tear
    @ManyToOne
    private Location location;
}
