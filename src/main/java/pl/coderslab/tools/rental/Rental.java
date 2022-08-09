package pl.coderslab.tools.rental;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.tools.tool.Tool;
import pl.coderslab.tools.user.User;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "rentals")

public class Rental {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime rented;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime returned;
//    private String rented;
//    private String returned;
    private String notices;

    @ManyToOne
    private User user;

    @ManyToOne
    private Tool tool;

}
