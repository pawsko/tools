package pl.coderslab.tools.location;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.tool.Tool;
import pl.coderslab.tools.tool.ToolDao;

@Controller
@RequestMapping("/location")
public class LocationController {
    private final LocationDao locationDao;

    public LocationController(LocationDao locationDao) {
        this.locationDao = locationDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("locations", locationDao.findAll());
        return "location/list";
    }

    @GetMapping("/add")
    public String addLocation(Model model) {
        model.addAttribute("locations", locationDao.findAll());
        model.addAttribute("location", new Location());
        return "location/add";
    }

    @PostMapping("/add")
    public String save(Location location) {
        locationDao.create(location);
        return "redirect:/location/add";
    }

    @GetMapping("/edit/{id}")
    public String editLocation(@PathVariable Long id, Model model) {
        model.addAttribute("location", locationDao.read(id));
        return "location/edit";
    }

    @PostMapping("/edit")
    public String update(Location location) {
        locationDao.update(location);
        return "redirect:/location/list";
    }
}
