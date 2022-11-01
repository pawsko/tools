package pl.coderslab.tools.location.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import pl.coderslab.tools.location.LocationDto;
import pl.coderslab.tools.location.LocationService;

import java.net.URI;

@RestController
@RequestMapping("/api/location")
public class LocationRestController {
    private final LocationService locationService;

    public LocationRestController(LocationService locationService) {
        this.locationService = locationService;
    }

    @GetMapping
    public Iterable<pl.coderslab.tools.location.LocationDto> getAll() {
        return locationService.getAllLocations();
    }

    @GetMapping("/{id}")
    public ResponseEntity<pl.coderslab.tools.location.LocationDto> getById (@PathVariable Long id) {
        return locationService.getLocationById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    ResponseEntity<LocationDto> saveCategory(@RequestBody LocationDto locationDto) {
        LocationDto savedLocation = locationService.saveLocation(locationDto);
        URI savedLocationUri = ServletUriComponentsBuilder.fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(savedLocation.getId())
                .toUri();
        return ResponseEntity.created(savedLocationUri).body(savedLocation);
    }

    @PutMapping("/{id}")
    ResponseEntity<?> replaceCategory(@PathVariable Long id, @RequestBody LocationDto locationDto) {
        return locationService.replaceLocation(id, locationDto)
                .map(c -> ResponseEntity.noContent().build())
                .orElse(ResponseEntity.notFound().build());
    }
}
