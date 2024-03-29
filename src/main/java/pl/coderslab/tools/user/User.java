package pl.coderslab.tools.user;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.tools.tool.Tool;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "users")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String email;
    private int rating;
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
