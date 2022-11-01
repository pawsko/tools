package pl.coderslab.tools.tool;

import org.springframework.stereotype.Service;

@Service
public class ToolDtoMapper {
    public ToolDto map(Tool tool) {
        ToolDto dto = new ToolDto();
        dto.setName(tool.getName());
        dto.setModel(tool.getModel());
        dto.setManufacturer(tool.getManufacturer().getManufacturerName());
        if (tool.getUser() != null) {
            dto.setRented(true);
        } else
            dto.setRented(false);
        return dto;
    }


    public Tool map(ToolDto toolDto) {
        Tool tool = new Tool();
        tool.setId(toolDto.getId());
        tool.setName(toolDto.getName());
        return tool;
    }

}
