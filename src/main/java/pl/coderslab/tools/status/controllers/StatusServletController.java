package pl.coderslab.tools.status.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.tools.status.Status;
import pl.coderslab.tools.status.StatusRepository;

@Controller
@RequestMapping("/status")
public class StatusServletController {
    private final StatusRepository statusRepository;

    public StatusServletController(StatusRepository statusRepository) {
        this.statusRepository = statusRepository;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("status", statusRepository.findAll());
        return "status/list";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("statuses", statusRepository.findAll());
        model.addAttribute("status", new Status());
        return "status/add";
    }

    @PostMapping("/add")
    public String save(Status status) {
        statusRepository.save(status);
        return "redirect:/status/add";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        model.addAttribute("status", statusRepository.findById(id));
        return "status/edit";
    }

    @PostMapping("/edit")
    public String update(Status status) {
        statusRepository.save(status);
        return "redirect:/status/add";
    }
}
