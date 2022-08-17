package pl.coderslab.tools.powertype;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "powerTypes")
@Data
public class PowerType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String powerType;
}
