package pl.coderslab.tools.powertype;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "powerTypes")
@Getter
@Setter
public class PowerType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String powerType;
}
