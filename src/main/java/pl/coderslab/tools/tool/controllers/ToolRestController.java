package pl.coderslab.tools.tool.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import pl.coderslab.tools.tool.ToolDto;
import pl.coderslab.tools.tool.ToolService;


@RestController
@RequestMapping("/api/tool")
public class ToolRestController {
    private final ToolService toolService;

    public ToolRestController(ToolService toolService) {
        this.toolService = toolService;
    }


    @GetMapping
    public Iterable<ToolDto> list() {
        return toolService.getAllTools();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ToolDto> getById(@PathVariable Long id) {
        return toolService.getToolById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
}

