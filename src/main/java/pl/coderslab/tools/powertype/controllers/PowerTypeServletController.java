package pl.coderslab.tools.powertype.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.powertype.PowerType;
import pl.coderslab.tools.powertype.PowerTypeRepository;

@Controller
@RequestMapping("/powertype")
public class PowerTypeServletController {
    private final PowerTypeRepository powerTypeRepository;

    public PowerTypeServletController(PowerTypeRepository powerTypeRepository) {
        this.powerTypeRepository = powerTypeRepository;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("powetypes", powerTypeRepository.findAll());
        return "powertype/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("powertypes", powerTypeRepository.findAll());
        model.addAttribute("powertype", new PowerType());
        return "powertype/add";
    }

    @PostMapping("/add")
    public String save(PowerType powerType) {
        powerTypeRepository.save(powerType);
        return "redirect:/powertype/add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("powertype", powerTypeRepository.findById(id));
        return "powertype/edit";
    }

    @PostMapping("/edit")
    public String update(PowerType powerType) {
        powerTypeRepository.save(powerType);
        return "redirect:/powertype/add";
    }
}
