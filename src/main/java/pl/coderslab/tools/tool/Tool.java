package pl.coderslab.tools.tool;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.tools.location.Location;
import pl.coderslab.tools.manufacturer.Manufacturer;
import pl.coderslab.tools.powertype.PowerType;
import pl.coderslab.tools.status.Status;
import pl.coderslab.tools.category.Category;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

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
    @ManyToOne
    private Category category;    //Hand tools, Power tools, Petrol tools, Measuring tools
    @ManyToOne
    private PowerType powerType; //if applicable 230, battery, gasoline for 4T, gasoline + oilmix for 2T handy
    @ManyToOne
    private Status status; //Available, not available, damaged, in service, out of ofrder
    private int rating; //included accuracy, rate of wear and tear
    @ManyToOne
    private Location location;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime created;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime lastUpdate;

    @PrePersist
    public void prePersist() {
        created = LocalDateTime.now().truncatedTo(ChronoUnit.MINUTES);
    }

    @PreUpdate
    public void preUpdate() {
        lastUpdate = LocalDateTime.now().truncatedTo(ChronoUnit.MINUTES);
    }

}


