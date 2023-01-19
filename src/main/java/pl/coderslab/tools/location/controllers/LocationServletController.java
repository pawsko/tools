package pl.coderslab.tools.location.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.Location;
import pl.coderslab.tools.location.LocationRepository;

@Controller
@RequestMapping("/location")
public class LocationServletController {
    private final LocationRepository locationRepository;

    public LocationServletController(LocationRepository locationDao) {
        this.locationRepository = locationDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("locations", locationRepository.findAll());
        return "location/list";
    }

    @GetMapping("/add")
    public String addLocation(Model model) {
        model.addAttribute("locations", locationRepository.findAll());
        model.addAttribute("location", new Location());
        return "location/add";
    }

    @PostMapping("/add")
    public String save(Location location) {
        locationRepository.save(location);
        return "redirect:/location/add";
    }

    @GetMapping("/edit/{id}")
    public String editLocation(@PathVariable Long id, Model model) {
        model.addAttribute("location", locationRepository.findById(id));
        return "location/edit";
    }

    @PostMapping("/edit")
    public String update(Location location) {
        locationRepository.save(location);
        return "redirect:/location/list";
    }
}
