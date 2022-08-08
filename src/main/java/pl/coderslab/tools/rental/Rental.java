package pl.coderslab.tools.rental;

import lombok.Getter;
import lombok.Setter;
import pl.coderslab.tools.tool.Tool;
import pl.coderslab.tools.user.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Table(name = "rentals")
public class Rental {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDateTime rented;
    private LocalDateTime returned;
    private String notices;

    @ManyToOne
    private User user;

    @ManyToOne
    private Tool tool;
}
