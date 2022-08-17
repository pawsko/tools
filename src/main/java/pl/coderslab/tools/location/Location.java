package pl.coderslab.tools.location;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "locations")
@Data
public class Location {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nameOfLocations;

    public Long getId() {
        return this.id;
    }

    public String getNameOfLocations() {
        return this.nameOfLocations;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNameOfLocations(String nameOfLocations) {
        this.nameOfLocations = nameOfLocations;
    }
}
