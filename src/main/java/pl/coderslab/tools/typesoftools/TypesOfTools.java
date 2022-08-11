package pl.coderslab.tools.typesoftools;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "typesOfTools")
@Getter
@Setter
public class TypesOfTools {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String typeOfTool;

}
