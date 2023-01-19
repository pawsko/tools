package pl.coderslab.tools.powertype.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import pl.coderslab.tools.powertype.PowerTypeDto;
import pl.coderslab.tools.powertype.PowerTypeService;

import java.net.URI;

@RestController
@RequestMapping("/api/powertype")
public class PowerTypeRestController {
    private final PowerTypeService powerTypeService;

    public PowerTypeRestController(PowerTypeService powerTypeService) {
        this.powerTypeService = powerTypeService;
    }

    @GetMapping
    public Iterable<PowerTypeDto> getAll() {
        return powerTypeService.getAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<PowerTypeDto> getById(@PathVariable Long id) {
        return powerTypeService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    ResponseEntity<PowerTypeDto> save(@RequestBody PowerTypeDto powerTypeDto) {
        PowerTypeDto savedPowerType = powerTypeService.savePowerType(powerTypeDto);
        URI savedLocationUri = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(savedPowerType.getId())
                .toUri();
        return ResponseEntity.created(savedLocationUri).body(savedPowerType);
    }

    @PutMapping("/{id}")
    ResponseEntity<?> replace(@PathVariable Long id, @RequestBody PowerTypeDto powerTypeDto) {
        return powerTypeService.replacePowerType(id, powerTypeDto)
                .map(c -> ResponseEntity.noContent().build())
                .orElse(ResponseEntity.notFound().build());
    }
}
