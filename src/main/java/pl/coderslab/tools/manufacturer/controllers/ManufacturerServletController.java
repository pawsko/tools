package pl.coderslab.tools.manufacturer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.manufacturer.Manufacturer;
import pl.coderslab.tools.manufacturer.ManufacturerRepository;

@Controller
@RequestMapping("/manufacturer")
public class ManufacturerServletController {
    private final ManufacturerRepository manufacturerRepository;

    public ManufacturerServletController(ManufacturerRepository manufacturerDao) {
        this.manufacturerRepository = manufacturerDao;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("manufacturers", manufacturerRepository.findAll());
        return "manufacturer/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("manufacturers", manufacturerRepository.findAll());
        model.addAttribute("manufacturer", new Manufacturer());
        return "manufacturer/add";
    }

    @PostMapping("/add")
    public String save(Manufacturer manufacturer) {
        manufacturerRepository.save(manufacturer);
        return "redirect:/manufacturer/add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("manufacturer", manufacturerRepository.findById(id));
        return "manufacturer/edit";
    }

    @PostMapping("/edit")
    public String update(Manufacturer manufacturer) {
        manufacturerRepository.save(manufacturer);
        return "redirect:/manufacturer/list";
    }
}
