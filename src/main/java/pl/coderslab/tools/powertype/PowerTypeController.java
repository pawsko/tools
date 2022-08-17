package pl.coderslab.tools.powertype;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.location.Location;
import pl.coderslab.tools.location.LocationDao;

@Controller
@RequestMapping("/powertype")
public class PowerTypeController {
    private final PowerTypeDao powerTypeDao;

    public PowerTypeController(PowerTypeDao powerTypeDao) {
        this.powerTypeDao = powerTypeDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("powetypes", powerTypeDao.findAll());
        return "powertype/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("powertype", new PowerType());
        return "powertype/add";
    }

    @PostMapping("/add")
    public String save(PowerType powerType) {
        powerTypeDao.create(powerType);
        return "redirect:/powertype/list";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("powertype", powerTypeDao.read(id));
        return "powertype/edit";
    }

    @PostMapping("/edit")
    public String update(PowerType powerType) {
        powerTypeDao.update(powerType);
        return "redirect:/powertype/list";
    }
}
