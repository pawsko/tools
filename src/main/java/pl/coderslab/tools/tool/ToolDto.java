package pl.coderslab.tools.tool;

import lombok.Data;

@Data
public class ToolDto {
    private Long id;
    private String name;
    private String model;
    private String manufacturer;
    private Boolean rented;
}
