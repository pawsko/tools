package pl.coderslab.tools.manufacturer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.Location;

@Controller
@RequestMapping("/manufacturer")
public class ManufacturerController {
    private final ManufacturerDao manufacturerDao;

    public ManufacturerController(ManufacturerDao manufacturerDao) {
        this.manufacturerDao = manufacturerDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("manufacturers", manufacturerDao.findAll());
        return "manufacturer/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("manufacturer", new Manufacturer());
        return "manufacturer/add";
    }

    @PostMapping("/add")
    public String save(Manufacturer manufacturer) {
        manufacturerDao.create(manufacturer);
        return "redirect:/manufacturer/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("manufacturer", manufacturerDao.read(id));
        return "manufacturer/edit";
    }

    @PostMapping("/edit")
    public String update(Manufacturer manufacturer) {
        manufacturerDao.update(manufacturer);
        return "redirect:/manufacturer/list";
    }
}
